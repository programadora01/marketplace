<?php

namespace App\Payment\PagSeguro;

class Notification
{
    public function getTransaction()
    {
        if (\PagSeguro\Helpers\Xhr::hasPost()) {
            $response = \PagSeguro\Services\Transactions\Notification::check(
                \PagSeguro\Configuration\Configure::getAccountCredentials()
            );

            return $response;
        }
    }
}
