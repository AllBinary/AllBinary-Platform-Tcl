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
        my jset eventListenerInterfaceList {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {} {
        next
        my initFields_BasicEventHandler
        my jset eventListenerInterfaceList [::BasicArrayListD new]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set LISTENER " Listener: "
        $stringBuffer append "Total Listeners: "
        $stringBuffer appendint [[my jget eventListenerInterfaceList] size]
        set eventListenerInterface {}
        set index 0
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[[my jget eventListenerInterfaceList] jget objectArray] get $index]
                $stringBuffer append $LISTENER
                $stringBuffer append [[::StringUtil::getInstance] toString1 $eventListenerInterface]
            } on error {e} {
                set commonStrings [::CommonStrings::getInstance]
                [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget TOSTRING] $e
            }
            jpostincr index 1
        }
        return [$stringBuffer toString]
    }
    

    method removeAllListeners {} {
        my jset eventListenerInterfaceList [::BasicArrayListD new]
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
        set index 0
        set eventListenerInterface {}
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[[my jget eventListenerInterfaceList] jget objectArray] get $index]
                my process $eventObject $eventListenerInterface
            } on error {e} {
                set commonStrings [::CommonStrings::getInstance]
                [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
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
}

namespace eval ::BasicEventHandler {
    variable PERFORMANCE_MESSAGEValue {}
    variable PERFORMANCE_MESSAGESet 0
    proc staticGet_PERFORMANCE_MESSAGE {} {
        variable PERFORMANCE_MESSAGEValue
        variable PERFORMANCE_MESSAGESet
        if {!$PERFORMANCE_MESSAGESet} {
            set PERFORMANCE_MESSAGESet 1
            set PERFORMANCE_MESSAGEValue "Use Custom onEvent Methods for needed optimization"
        }
        return $PERFORMANCE_MESSAGEValue
    }
    proc staticSet_PERFORMANCE_MESSAGE {value} {
        variable PERFORMANCE_MESSAGEValue
        variable PERFORMANCE_MESSAGESet
        set PERFORMANCE_MESSAGESet 1
        set PERFORMANCE_MESSAGEValue $value
    }
}


