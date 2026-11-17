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

oo::class create ::TimeDelayHelper {
    superclass ::JObject
}

oo::define ::TimeDelayHelper {
    method initFields_TimeDelayHelper {} {
        my jset startTime 0
        my jset elapsedTimeAtPause 0
        my jset delay 0
        my jset startTime [expr {-1}]
        my jset elapsedTimeAtPause [::Long::staticGet_MIN_VALUE]
        
        return
    }
    

    constructor {delay} {
        next
        my initFields_TimeDelayHelper
        my jset delay $delay
        my setStartTimeTNT
    }
    

    method isTimeTNT {} {
        set currentTime [clock milliseconds]
        if {[expr {[jlong [expr {$currentTime - [my jget startTime]}]] > [my jget delay]}]} {
            my jset startTime $currentTime
            return true
        }
        return false
    }
    

    method isTimeSinceTNT {delay} {
        set currentTime [clock milliseconds]
        if {[expr {[jlong [expr {$currentTime - [my jget startTime]}]] > $delay}]} {
            my jset startTime $currentTime
            return true
        }
        return false
    }
    

    method isTime {currentTime} {
        if {[expr {[jlong [expr {$currentTime - [my jget startTime]}]] > [my jget delay]}]} {
            my jset startTime $currentTime
            return true
        }
        return false
    }
    

    method isTimeWithoutReset {currentTime} {
        if {[expr {[jlong [expr {$currentTime - [my jget startTime]}]] > [my jget delay]}]} {
            return true
        }
        return false
    }
    

    method isTimeSince {delay currentTime} {
        if {[expr {[jlong [expr {$currentTime - [my jget startTime]}]] > [my jget delay]}]} {
            my jset startTime $currentTime
            return true
        }
        return false
    }
    

    method getElapsedTNT {} {
        return [expr {[clock milliseconds] - [my jget startTime]}]
    }
    

    method getElapsed {currentTime} {
        return [jlong [expr {$currentTime - [my jget startTime]}]]
    }
    

    method isElapsed {currentTime time} {
        if {[expr {[my getElapsed $currentTime] > $time}]} {
            return true
        } else {
            return false
        }
    }
    

    method isElapsedTNT {time} {
        if {[expr {[my getElapsedTNT] > $time}]} {
            return true
        } else {
            return false
        }
    }
    

    method setStartTime {startTime} {
        my jset startTime $startTime
    }
    

    method getStartTime {} {
        return [my jget startTime]
    }
    

    method setStartTimeTNT {} {
        my jset startTime [clock milliseconds]
    }
    

    method pause {} {
        my jset elapsedTimeAtPause [my getElapsedTNT]
        my jset startTime [::Long::staticGet_MAX_VALUE]
    }
    

    method resume {} {
        if {[expr {[my jget elapsedTimeAtPause] != [::Long::staticGet_MIN_VALUE]}]} {
            my jset startTime [expr {[clock milliseconds] + [my jget elapsedTimeAtPause]}]
            my jset elapsedTimeAtPause [::Long::staticGet_MIN_VALUE]
            my setStartTimeTNT
            return true
        }
        return false
    }
    

    method toStringAt {currentTime} {
        set elapsed [my getElapsed $currentTime]
        if {[expr {$elapsed > 0}]} {
            set commonLabels [::CommonLabels::getInstance]
            set elapsedAsString [jstr $elapsed]
            return [[[[[[[[::StringMaker new] append [$commonLabels jget START]] appendlong [my jget startTime]] append [$commonLabels jget CURRENT]] appendlong $currentTime] append [$commonLabels jget ELAPSED]] append $elapsedAsString] toString]
        } else {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
    }
    

    method toString {} {
        set currentTime [clock milliseconds]
        set elapsed [my getElapsed $currentTime]
        if {[expr {$elapsed > 0}]} {
            set commonLabels [::CommonLabels::getInstance]
            set elapsedAsString [jstr $elapsed]
            return [[[[[[[[::StringMaker new] append [$commonLabels jget START]] appendlong [my jget startTime]] append [$commonLabels jget CURRENT]] appendlong $currentTime] append [$commonLabels jget ELAPSED]] append $elapsedAsString] toString]
        } else {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
    }
}

namespace eval ::TimeDelayHelper {
}


