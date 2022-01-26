<?php

namespace App\Console\Commands;

use App\Soap\Clients\KonseKonseClient;
use CodeDredd\Soap\Facades\Soap;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

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
        $content = Storage::path('wsdl.xml');

        $response = Soap::baseWsdl($content)
            ->withWsse([
                'Username' => '1642597774456',
                'Password' => '0lA04x4V'
            ])
            ->processCustomerPayment([
                'transactionAmount' => 1,
                'customerMobile' => '260977634317',
                'paymentReference' => $now,
            ]);

        dd($response->body());
    }
}
