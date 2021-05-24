<?php

namespace App\Console\Commands;

use App\Models\Admin;
use App\Models\Business;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Service;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Hash;
use Illuminate\Testing\Fluent\Concerns\Has;

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

        $customer = Customer::firstOrCreate(
            ['email' => 'john.doe@gmail.com'],
            [
                'firstname' => 'John',
                'lastname' => 'Doe',
                'mobile' => '0977634317',
                'email' => 'john.doe@gmail.com',
                'password' => Hash::make('Welcome1')
            ]);

        Customer::factory()->count(50)->create();

    }
}
