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
# package org.allbinary.logic.util.event.handler

oo::class create ::BasicEventHandler {
    superclass ::JObject
}

oo::define ::BasicEventHandler {
    method initFields_BasicEventHandler {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset eventStrings {}
        my jset eventListenerInterfaceList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset eventStrings [::EventStrings::getInstance]
        
        return
    }
    

    constructor {} {
        next
        my initFields_BasicEventHandler
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
            my addListenerInterface $eventListenerInterface
        }
    }
    

    method removeListeners {vector} {
        set eventListenerInterface {}
        set size [$vector size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set eventListenerInterface [$vector get $index]
            my removeListener $eventListenerInterface
        }
    }
    

    method addListenerSingleThreaded {eventListenerInterface} {
        if {[expr {![[my jget eventListenerInterfaceList] contains $eventListenerInterface]}]} {
            [my jget eventListenerInterfaceList] add $eventListenerInterface
        }
    }
    

    method addListenerInterface {eventListenerInterface} {
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
    

    method fireEvent {eventObject} {
        set eventListenerInterface {}
        set index 0
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                my process $eventObject $eventListenerInterface
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget eventStrings] jget FIRE_EVENT] $e
            }
            jpostincr index 1
        }
    }
    

    method process {eventObject eventListenerInterface} {
        $eventListenerInterface onEvent $eventObject
    }
    

    method getEventListenerInterfaceListP {} {
        return [my jget eventListenerInterfaceList]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [[my jget eventStrings] jget TOTAL_LISTENERS]
        $stringBuffer appendint [[my jget eventListenerInterfaceList] size]
        set eventListenerInterface {}
        set index 0
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                $stringBuffer append [[my jget eventStrings] jget LISTENER_LABEL]
                $stringBuffer append [$eventListenerInterface toString]
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget TOSTRING] $e
            }
            jpostincr index 1
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::BasicEventHandler {
}


