# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::GameTickTimeDelayHelper {
    superclass ::JObject
}

oo::define ::GameTickTimeDelayHelper {
    method initFields_GameTickTimeDelayHelper {} {
        my jset timeDelta 0
        my jset startTime 0
        my jset lastStartTime 0
        my jset timeDelta 0
        
        
        return
    }
    

    constructor {startTime} {
        next
        my initFields_GameTickTimeDelayHelper
        my jset startTime $startTime
        my jset lastStartTime 0
    }
    

    method setStartTime {} {
        my jset startTime [clock milliseconds]
        return [my jget startTime]
    }
    

    method loop {} {
        if {[expr {[my jget lastStartTime] == [::Long::staticGet_MIN_VALUE]}]} {
            my jset timeDelta 0
        } else {
            my jset timeDelta [jlong [expr {[clock milliseconds] - [my jget lastStartTime]}]]
        }
    }
    

    method getTimeFromStart {} {
        return [jlong [expr {[my jget startTime] - [my jget lastStartTime]}]]
    }
}

namespace eval ::GameTickTimeDelayHelper {
}


