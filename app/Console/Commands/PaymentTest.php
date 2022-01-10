<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class PaymentTest extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pay';

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

        $now = now()->format('YmdHiss');
        var_dump($now);
        $response = Http::withHeaders([
            'Content-Type' => 'text/xml;Charset=utf-8',
            'Connection' => 'Keep-Alive'
        ])->withBody('<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:kon="http://konik.cgrate.com">

   <soapenv:Header>

         <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="1">

            <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="1639046031044">

               <wsse:Username>1639046031044</wsse:Username>

               <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">rEEeVPe4</wsse:Password>

            </wsse:UsernameToken>

         </wsse:Security>

 </soapenv:Header>

   <soapenv:Body>
   <ns2:processCustomerPayment xmlns:ns2="http://konik.cgrate.com">
   <transactionAmount>5</transactionAmount>
   <customerMobile>260955506951</customerMobile>
   <paymentReference>'.$now.'</paymentReference>
   </ns2:processCustomerPayment>
   </soapenv:Body>

</soapenv:Envelope>', 'text/xml;Charset=utf-8')->post('http://test.543.cgrate.co.zm:55555/Konik/KonikWs');

        dd($response->body());
    }
}
