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

        foreach (Business::all() as $user) {
//            $request->erm_id = User::where('positions_id', env('ERM_POSITION_ID'))->first()->id;
//            $request->save();
            if (!$user->avatar) {
                $user->addMediaFromUrl(asset('media/users/blank.png'))->toMediaCollection('avatar');
            }

//            foreach (Customer::all() as $c) {
//                $c->password = Hash::make('Welcome');
//                $c->save();
//            }


        }
    }
    }
