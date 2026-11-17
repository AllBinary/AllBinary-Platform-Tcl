#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.time

oo::class create ::TimeUtil {
    superclass ::JObject
}

oo::define ::TimeUtil {
    method initFields_TimeUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_TimeUtil
    }
    
    

    method setCalendar {calendar yearString monthString dayString hourString} {
        set year [$yearString intValue]
        set month [$monthString intValue]
        set day [$dayString intValue]
        set hour [$hourString intValue]
        $calendar set $year $month $day $hour 0
    }
    

    method setCalendarWithTime {calendar yearString monthString dayString hourString minuteString secondString} {
        set year [$yearString intValue]
        set month [$monthString intValue]
        set day [$dayString intValue]
        set hour [$hourString intValue]
        set minute [$minuteString intValue]
        set second [$secondString intValue]
        $calendar set $year $month $day $hour $minute $second
    }
    

    method setExpirationCalendar {calendar yearsString monthsString daysString hoursString minutesString secondsString} {
        set year [expr {[$calendar get [::Calendar::staticGet_YEAR]] + [$yearsString intValue]}]
        set month [expr {[$calendar get [::Calendar::staticGet_MONTH]] + [$monthsString intValue]}]
        set day [expr {[$calendar get [::Calendar::staticGet_DAY_OF_MONTH]] + [$daysString intValue]}]
        set hour [expr {[$calendar get [::Calendar::staticGet_HOUR]] + [$hoursString intValue]}]
        set minute [expr {[$calendar get [::Calendar::staticGet_MINUTE]] + [$minutesString intValue]}]
        set second [expr {[$calendar get [::Calendar::staticGet_SECOND]] + [$secondsString intValue]}]
        $calendar set $year $month $day $hour $minute $second
    }
    

    method getTotalTime {yearString monthString dayString hourString minuteString secondString} {
        set time [[::TimeUtil::staticGet_calendar] getTimeInMillis]
        my setExpirationCalendar [::TimeUtil::staticGet_calendar] $yearString $monthString $dayString $hourString $minuteString $secondString
        set timeDelta [[::TimeUtil::staticGet_calendar] getTimeInMillis]
        return [jlong [expr {$timeDelta - $time}]]
    }
}

namespace eval ::TimeUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TimeUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable calendarValue {}
    variable calendarSet 0
    proc staticGet_calendar {} {
        variable calendarValue
        variable calendarSet
        if {!$calendarSet} {
            set calendarSet 1
            set calendarValue [::Calendar::getInstance]
        }
        return $calendarValue
    }
    proc staticSet_calendar {value} {
        variable calendarValue
        variable calendarSet
        set calendarSet 1
        set calendarValue $value
    }
    proc getInstance {} {
        return [::TimeUtil::staticGet_instance]
    }
}


