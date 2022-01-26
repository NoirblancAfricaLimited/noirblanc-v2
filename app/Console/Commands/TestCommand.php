<?php

namespace App\Console\Commands;

use App\Models\Admin;
use App\Models\Booking;
use App\Models\Business;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Service;
use Artisaninweb\SoapWrapper\SoapWrapper;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Testing\Fluent\Concerns\Has;
use SoapClient;
use SoapHeader;
use SoapVar;

class TestCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'run:test';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $content = Storage::path('wsdl.xml');
        $auth = Storage::get('auth.xml');
        $now = now()->format('YmdHiss');
        $headerVar = new SoapVar($auth,
            XSD_ANYXML);
        $header = new SoapHeader('http://tempuri.org/','RequestParams',
            $headerVar);
        $client = new SoapClient($content);
        $client->__setSoapHeaders($header);

        $response = $client->__soapCall('processCustomerPayment',[
            'parameters' => [
                'transactionAmount' => '1',
                'customerMobile' => '260977634317',
                'paymentReference' => $now,
            ]
        ]);

       return $response->return->responseCode == 0;
    }

}
