<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Lang;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Lang::handleMissingKeysUsing(function (string $key, array $replacements, string $locale) {
            info("Missing translation key [$key] detected.");
     
            return $key;
        });
    }
}
