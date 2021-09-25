<?php

namespace App\Providers;

use App\Models\Account;
use App\Models\Quotation;
use App\Models\User;
use App\Policies\AccountPolicy;
use App\Policies\QuotationPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
        Quotation::class => QuotationPolicy::class,
        Account::class => AccountPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('manager',function(User $user){
            return $user->role_id === 5;
        });
    }
}
