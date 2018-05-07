<?php

namespace App\Http\Controllers;

use App\Setting;
use Illuminate\Http\Request;

class SettingsContrller extends Controller
{

    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        return view('admin.settings.settings')->with('settings', Setting::first());
    }

    public function update()
    {
        $this->validate(request(), [
            'site_name' => 'required',
            'contact_number' => 'required',
            'address' => 'required',
            'contact_email' => 'required'
        ]);
        $settings = Setting::first();

        $settings->site_name = request()->site_name;
        $settings->address = request()->address;
        $settings->contact_number = request()->contact_number;
        $settings->contact_email = request()->contact_email;

        $settings->save();
        return redirect()->back();
    }

}
