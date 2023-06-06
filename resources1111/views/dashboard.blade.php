<x-app-layout>
    <x-slot name="header">
        <img src="{{ asset( 'storage/'.Auth::user()->img) }}  " height="200" width="200" alt="Avatar">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
           <pre> {{ __('Dashboard Student ') }}                              {{Auth::user()->user_name}}          </pre>
        </h2>
         <h2 class="font-semibold text-xl text-gray-800 leading-tight">
           <pre> {{ __('Your Email Student ') }}                             {{Auth::user()->email}}          </pre>
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    {{ __("You're logged in! seccassafly") }}
                    <br>
                    {{ __("You're Student in the site") }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
