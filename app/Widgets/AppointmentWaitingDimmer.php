<?php

namespace App\Widgets;

use \App\Appointment;
use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Carbon\Carbon;

class AppointmentWaitingDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Appointment::whereDate('appt_date', Carbon::today())
        ->where('appt_status', '=', 'Waiting')
        ->count();
        $string = 'patients waiting';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-calendar',
            'title'  => "{$count} {$string}",
            'text'   => 'Click the button below to view list',
            'button' => [
                'text' => 'View',
                'link' => route('appointments.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', app(Appointment::class));
    }
}
