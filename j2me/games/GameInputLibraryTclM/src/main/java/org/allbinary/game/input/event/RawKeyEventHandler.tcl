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
# package org.allbinary.game.input.event

oo::class create ::RawKeyEventHandler {
    superclass ::JObject
}

oo::define ::RawKeyEventHandler {
    method initFields_RawKeyEventHandler {} {
        my jset logUtil {}
        my jset eventListenerInterfaceList {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_RawKeyEventHandler
        my jset eventListenerInterfaceList [::BasicArrayListD new]
    }
    

    method removeAllListeners {} {
        my jset eventListenerInterfaceList [::BasicArrayListD new]
    }
    

    method addListeners {vector} {
        set eventListenerInterface {}
        set size [$vector size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set eventListenerInterface [$vector get $index]
            my addListener $eventListenerInterface
        }
    }
    

    method addListenerSingleThreaded {eventListenerInterface} {
        if {[expr {![[my jget eventListenerInterfaceList] contains $eventListenerInterface]}]} {
            [my jget eventListenerInterfaceList] add $eventListenerInterface
        }
    }
    

    method addListener {eventListenerInterface} {
        if {[expr {![[my jget eventListenerInterfaceList] contains $eventListenerInterface]}]} {
            [my jget eventListenerInterfaceList] add $eventListenerInterface
        }
    }
    

    method removeListenerSingleThreaded {eventListenerInterface} {
        [my jget eventListenerInterfaceList] remove $eventListenerInterface
    }
    

    method removeListener {eventListenerInterface} {
        [my jget eventListenerInterfaceList] remove $eventListenerInterface
    }
    

    method fireEvent {keyCode deviceId repeated} {
        set eventListenerInterface {}
        set index 0
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                my process $keyCode $deviceId $repeated $eventListenerInterface
            } on error {e} {
                set commonStrings [::CommonStrings::getInstance]
                [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
            jpostincr index 1
        }
    }
    

    method process {keyCode deviceId repeated eventListenerInterface} {
        $eventListenerInterface onEventRaw $keyCode $deviceId $repeated
    }
    

    method getEventListenerInterfaceListP {} {
        return [my jget eventListenerInterfaceList]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [::RawKeyEventHandler::staticGet_TOTAL_LISTENERS]
        $stringBuffer appendint [[my jget eventListenerInterfaceList] size]
        set eventListenerInterface {}
        set index 0
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                $stringBuffer append [::RawKeyEventHandler::staticGet_LISTENER_LABEL]
                $stringBuffer append [$eventListenerInterface toString]
            } on error {e} {
                set commonStrings [::CommonStrings::getInstance]
                [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget TOSTRING] $e
            }
            jpostincr index 1
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::RawKeyEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RawKeyEventHandler new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable TOTAL_LISTENERSValue {}
    variable TOTAL_LISTENERSSet 0
    proc staticGet_TOTAL_LISTENERS {} {
        variable TOTAL_LISTENERSValue
        variable TOTAL_LISTENERSSet
        if {!$TOTAL_LISTENERSSet} {
            set TOTAL_LISTENERSSet 1
            set TOTAL_LISTENERSValue "Total Listeners: "
        }
        return $TOTAL_LISTENERSValue
    }
    proc staticSet_TOTAL_LISTENERS {value} {
        variable TOTAL_LISTENERSValue
        variable TOTAL_LISTENERSSet
        set TOTAL_LISTENERSSet 1
        set TOTAL_LISTENERSValue $value
    }
    variable LISTENER_LABELValue {}
    variable LISTENER_LABELSet 0
    proc staticGet_LISTENER_LABEL {} {
        variable LISTENER_LABELValue
        variable LISTENER_LABELSet
        if {!$LISTENER_LABELSet} {
            set LISTENER_LABELSet 1
            set LISTENER_LABELValue " Listener: "
        }
        return $LISTENER_LABELValue
    }
    proc staticSet_LISTENER_LABEL {value} {
        variable LISTENER_LABELValue
        variable LISTENER_LABELSet
        set LISTENER_LABELSet 1
        set LISTENER_LABELValue $value
    }
    proc getInstance {} {
        return [::RawKeyEventHandler::staticGet_instance]
    }
}


