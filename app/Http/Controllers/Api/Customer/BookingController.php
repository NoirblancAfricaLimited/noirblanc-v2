<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookingResource;
use App\Http\Resources\GeneralResource;
use App\Models\Booking;
use App\Models\Service;
use Bavix\Wallet\Internal\Exceptions\TransactionFailedException;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use SoapClient;
use SoapFault;
use SoapHeader;
use SoapVar;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $service_id)
    {
        $bookings = $request->user()->bookings()->where('service_id', $service_id)->get();

        return BookingResource::collection($bookings);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Service $service, Request $request)
    {
        $booking = $request->user()->bookings()->create($request->merge(
            [
                'amount' => ($service->price * $request->quantity) * 1.025,
                'service_id' => $service->id
            ]
        )->all());
        $booking->setStatus('pending');
        return response()->json($booking);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function show(Service $service)
    {
        //
    }

    public function pay(Booking $booking, Request $request)
    {
        $service = $booking->service;
        $customer = auth()->user();
        $service->booking = $booking;
        $amount = $service->getAmountProduct($customer);
        try {
            $paid = $this->makePayment($request->mobile, $amount);
            if($paid->responseCode == 0){
                $customer->deposit($amount);
                $result = $customer->pay($service);
                $booking->setStatus('paid');
                return response()->json($paid->responseMessage);
            }else{
                return response()->json($paid->responseMessage,400);
            }
        }catch(Exception $e){
            return response()->json($e,400);
        }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Service $service)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function destroy(Service $service)
    {
        //
    }


    private function makePayment($mobile, $amount)
    {
        $content = Storage::path('wsdl.xml');
        $auth = Storage::get('auth.xml');
        $now = now()->format('YmdHiss');
        $headerVar = new SoapVar($auth,
            XSD_ANYXML);
        $header = new SoapHeader('http://tempuri.org/', 'RequestParams',
            $headerVar);
        $client = new SoapClient($content,array(
            'exceptions' => true,
        ));
        $client->__setSoapHeaders($header);

        try{
        $response = $client->__soapCall('processCustomerPayment', [
            'parameters' => [
                'transactionAmount' => $amount,
                'customerMobile' => $mobile,
                'paymentReference' => $now,
            ]
        ]);
        } catch ( SoapFault $e ) {
            throw new Exception($e->getMessage());
        }

        return $response->return;
    }
}
