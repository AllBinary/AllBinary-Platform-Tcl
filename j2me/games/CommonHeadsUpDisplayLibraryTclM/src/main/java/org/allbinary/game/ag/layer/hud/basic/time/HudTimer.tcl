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
# package org.allbinary.game.ag.layer.hud.basic.time

oo::class create ::HudTimer {
    superclass ::JObject
}

oo::define ::HudTimer {
    method initFields_HudTimer {} {
        my jset startTime 0
        my jset hundredthTime 0
        my jset maxTime 0
        my jset modifier 0
        my jset hundrethsString {}
        my jset totalDigits 0
        my jset primitiveLongUtil {}
        my jset MAX {}
        my jset gameTickTimeDelayHelper {}
        my jset startTime [expr {-1}]
        my jset hundredthTime 0
        
        my jset modifier 0
        my jset hundrethsString [[::PrimitiveLongSingleton::getInstance] jget ZERO]
        my jset totalDigits 1
        
        my jset MAX [jarrayfrom [list [scan "L" %c] [scan "O" %c] [scan "L" %c]]]
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        return
    }
    

    constructor {maxTime} {
        next
        my initFields_HudTimer
        my jset primitiveLongUtil [::PrimitiveLongUtil::createPowerOfTen $maxTime]
        my jset maxTime $maxTime
    }
    

    method start {} {
        my jset hundredthTime 0
        my jset startTime [[my jget gameTickTimeDelayHelper] jget startTime]
    }
    

    method get {} {
        return [my jget hundredthTime]
    }
    

    method update {} {
        set lastLowerTime [my jget hundredthTime]
        set currentTime ([expr {([expr {[my jget modifier] + [[my jget gameTickTimeDelayHelper] jget startTime]}]) - [my jget startTime]}])
        if {[expr {$currentTime < 0}]} {
            set currentTime 0
        }
        my jset hundredthTime [jdiv $currentTime 100]
        if {[expr {[my jget hundredthTime] >= [my jget maxTime]}]} {
            if {[expr {[my jget startTime] > 0}]} {
                my jset hundrethsString [my jget MAX]
            }
        } elseif {[expr {$lastLowerTime != [my jget hundredthTime]}]} {
            my jset hundrethsString [[my jget primitiveLongUtil] getCharArray [jint [my jget hundredthTime]]]
            my jset totalDigits [[my jget primitiveLongUtil] getCurrentTotalDigits]
        }
    }
    

    method reduce {value} {
        my jset modifier [jlong [expr {[my jget modifier] - $value}]]
    }
    

    method add {value} {
        my jset modifier [jlong [expr {[my jget modifier] + $value}]]
    }
    

    method getTimeChars {} {
        return [my jget hundrethsString]
    }
    

    method getCurrentTotalDigits {} {
        return [my jget totalDigits]
    }
}

namespace eval ::HudTimer {
}


