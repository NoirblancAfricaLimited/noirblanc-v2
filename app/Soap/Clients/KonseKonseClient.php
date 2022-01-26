<?php

namespace App\Soap\Clients;

use App\Soap\Contracts\KonseKonseContract;
use CodeDredd\Soap\Facades\Soap;
use Illuminate\Support\Traits\Macroable;

/**
 * KonseKonse Client
 *
 * @method \CodeDredd\Soap\Client\Response checkCashOutCodeStatus($body = [])
 * @method \CodeDredd\Soap\Client\Response generateCashOutCode($body = [])
 * @method \CodeDredd\Soap\Client\Response getAccountBalance($body = [])
 * @method \CodeDredd\Soap\Client\Response getAvailableCashDepositIssuers($body = [])
 * @method \CodeDredd\Soap\Client\Response getBillCustomerName($body = [])
 * @method \CodeDredd\Soap\Client\Response getBillPaymentBalanceDue($body = [])
 * @method \CodeDredd\Soap\Client\Response getDistributionChannels($body = [])
 * @method \CodeDredd\Soap\Client\Response getLastVouchersPurchased($body = [])
 * @method \CodeDredd\Soap\Client\Response getPRNData($body = [])
 * @method \CodeDredd\Soap\Client\Response getVouchers($body = [])
 * @method \CodeDredd\Soap\Client\Response getVouchersWithUnits($body = [])
 * @method \CodeDredd\Soap\Client\Response processBankToWallet($body = [])
 * @method \CodeDredd\Soap\Client\Response processCashDeposit($body = [])
 * @method \CodeDredd\Soap\Client\Response processCashOut($body = [])
 * @method \CodeDredd\Soap\Client\Response processCustomerPayment($body = [])
 * @method \CodeDredd\Soap\Client\Response processZRAPayment($body = [])
 * @method \CodeDredd\Soap\Client\Response processZRARentPayment($body = [])
 * @method \CodeDredd\Soap\Client\Response purchaseVoucher($body = [])
 * @method \CodeDredd\Soap\Client\Response purchaseZescoVoucher($body = [])
 * @method \CodeDredd\Soap\Client\Response queryCustomerPayment($body = [])
 * @method \CodeDredd\Soap\Client\Response queryTransactionStatus($body = [])
 * @method \CodeDredd\Soap\Client\Response reconcile($body = [])
 * @method \CodeDredd\Soap\Client\Response reverseCustomerPayment($body = [])
 * @method \CodeDredd\Soap\Client\Response validateVoucherPurchase($body = [])
 */
class KonseKonseClient implements KonseKonseContract
{
    use Macroable {
        Macroable::__call as macroCall;

    }

    protected $client = null;

    /**
     * KonseKonseClient constructor
     */
    public function __construct()
    {
        $this->client = Soap::buildClient('KonseKonse');
    }

    /**
     * Execute soap call
     *
     * @param string $method
     * @param mixed $parameters
     * @return \CodeDredd\Soap\Client\Response|mixed
     */
    public function __call($method, $parameters)
    {
        if (static::hasMacro($method)) {
            return $this->macroCall($method, $parameters);
        }

        $validationClass = 'App\\Soap\\Validations\\LaravelSoap\\'
            . ucfirst(Str::camel($method))
            . 'Validation';
        if (class_exists($validationClass)) {
            $parameters = app()->call([$validationClass, 'validator'], ['parameters' => $parameters]);
        }

        return $this->client->call($method, $parameters);
    }
}

