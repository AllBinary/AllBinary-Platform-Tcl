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
# package org.allbinary.android.input.motion.event

oo::class create ::AnalogControllerConfigurationEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::AnalogControllerConfigurationEventHandler {
    method initFields_AnalogControllerConfigurationEventHandler {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AnalogControllerConfigurationEventHandler
    }
    

    method addListener {analogControllerConfigurationEventListenerInterface} {
        if {[expr {![[my jget list] contains $analogControllerConfigurationEventListenerInterface]}]} {
            [my jget list] add $analogControllerConfigurationEventListenerInterface
        }
    }
    

    method removeAllListeners {} {
        [my jget list] clear
        next
    }
    

    method removeListener {eventListenerInterface} {
        [my jget list] remove $eventListenerInterface
        next $eventListenerInterface
    }
    

    method fireEvent {eventObject} {
        for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set playerGameInput [[[my jget list] jget objectArray] get $index]
                $playerGameInput onAnalogControllerConfigurationEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        next $eventObject
    }
    

    method process {eventObject eventListenerInterface} {
        set analogControllerConfigurationEventListenerInterface ($eventListenerInterface)
        $analogControllerConfigurationEventListenerInterface onAnalogControllerConfigurationEvent $eventObject
    }
}

namespace eval ::AnalogControllerConfigurationEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnalogControllerConfigurationEventHandler new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::AnalogControllerConfigurationEventHandler::staticGet_instance]
    }
}


