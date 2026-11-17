# Generated Code Do Not Modify
# package org.allbinary.time

oo::class create ::StupidTimer {
    superclass ::JObject
}

oo::define ::StupidTimer {
    method initFields_StupidTimer {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset nullUtil {}
        my jset threadObjectUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset nullUtil [::NullUtil::getInstance]
        my jset threadObjectUtil [::ThreadObjectUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_StupidTimer
    }
    

    method visitBool {visitorInterface} {
        set result [$visitorInterface visit [[my jget nullUtil] jget NULL_OBJECT]]
        set result2 [$result booleanValue]
        return $result2
    }
    

    method visit {visitorInterface timeDelayHelper} {
        set tookTooLong false
        set WAITING_FOR "Waiting for: "
        ::PreLogUtil::put [[[[::StringMaker new] append $WAITING_FOR] append [[::StringUtil::getInstance] toString1 $visitorInterface]] toString] [self] [[my jget commonStrings] jget VISIT]
        set index 0
        while {[my visitBool $visitorInterface]} {
            if {[expr {[jrem $index 10] == 0}]} {
                ::PreLogUtil::put [[[[::StringMaker new] append $WAITING_FOR] appendint $index] toString] [self] [[my jget commonStrings] jget VISIT]
            }
            jpostincr index 1
            if {1} {
                [my jget threadObjectUtil] waitObjectFor [self] 1800
            }
            if {[$timeDelayHelper isTimeTNT]} {
                set tookTooLong true
                break
            }
        }
        if {$tookTooLong} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget VISIT] [jexception Exception [[[[::StringMaker new] append "Took Too Long: "] append [[::StringUtil::getInstance] toString1 $visitorInterface]] toString]]
        } else {
            ::PreLogUtil::put [$timeDelayHelper toString] [self] [[my jget commonStrings] jget VISIT]
        }
    }
    

    method stopWaiting {} {
        if {1} {
            [my jget threadObjectUtil] notifyObject [self]
        }
    }
}

namespace eval ::StupidTimer {
}


