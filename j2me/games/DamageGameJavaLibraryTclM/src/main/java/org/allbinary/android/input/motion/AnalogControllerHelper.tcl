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
# package org.allbinary.android.input.motion

oo::class create ::AnalogControllerHelper {
    superclass ::JObject
}

oo::define ::AnalogControllerHelper {
    method initFields_AnalogControllerHelper {} {
        my jset reduceTimeFactor 0
        my jset SCALE_VALUE 0
        my jset rightTimeElapsedHelper {}
        my jset leftTimeElapsedHelper {}
        my jset downTimeElapsedHelper {}
        my jset upTimeElapsedHelper {}
        
        my jset SCALE_VALUE [[::AnalogControllerConfigurationFactory::getInstance] jget SCALE_VALUE]
        my jset rightTimeElapsedHelper [::TimeDelayHelper new 0]
        my jset leftTimeElapsedHelper [::TimeDelayHelper new 0]
        my jset downTimeElapsedHelper [::TimeDelayHelper new 0]
        my jset upTimeElapsedHelper [::TimeDelayHelper new 0]
        return
    }
    

    constructor {reduceTimeFactor} {
        next
        my initFields_AnalogControllerHelper
        my jset reduceTimeFactor $reduceTimeFactor
    }
    

    method right {collidableDestroyableDamageableLayer xAnalogValue} {
        [my jget rightTimeElapsedHelper] jset delay ([expr {([jint [expr {[my jget SCALE_VALUE] - $xAnalogValue}]]) >> [my jget reduceTimeFactor]}])
        if {[[my jget rightTimeElapsedHelper] isTimeTNT]} {
            $collidableDestroyableDamageableLayer right
        }
    }
    

    method left {collidableDestroyableDamageableLayer xAnalogValue} {
        [my jget leftTimeElapsedHelper] jset delay ([expr {([jint [expr {[my jget SCALE_VALUE] + $xAnalogValue}]]) >> [my jget reduceTimeFactor]}])
        if {[[my jget leftTimeElapsedHelper] isTimeTNT]} {
            $collidableDestroyableDamageableLayer left
        }
    }
    

    method up {collidableDestroyableDamageableLayer xAnalogValue} {
        [my jget upTimeElapsedHelper] jset delay ([expr {([jint [expr {[my jget SCALE_VALUE] - $xAnalogValue}]]) >> [my jget reduceTimeFactor]}])
        if {[[my jget upTimeElapsedHelper] isTimeTNT]} {
            $collidableDestroyableDamageableLayer up
        }
    }
    

    method down {collidableDestroyableDamageableLayer xAnalogValue} {
        [my jget downTimeElapsedHelper] jset delay ([expr {([jint [expr {[my jget SCALE_VALUE] + $xAnalogValue}]]) >> [my jget reduceTimeFactor]}])
        if {[[my jget downTimeElapsedHelper] isTimeTNT]} {
            $collidableDestroyableDamageableLayer down
        }
    }
}

namespace eval ::AnalogControllerHelper {
}


