<?php

namespace Database\Factories;

use App\Models\Customer;
use App\Models\Service;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Faker\Generator as Faker;


class CustomerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Customer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'firstname' => $this->faker->firstName,
            'lastname' => $this->faker->lastName,
            'mobile' => $this->faker->phoneNumber,
            'email' => $this->faker->email,
            'password' => Hash::make('Welcome1')
        ];
    }

    public function configure()
    {

        $faker = $this->faker;
        return $this->afterCreating(function (Customer $customer) use ($faker) {

            foreach (Service::all() as $service) {
                $service->review($faker->paragraph, $customer, $faker->numberBetween(1,5));
            }
        });

    }
}
