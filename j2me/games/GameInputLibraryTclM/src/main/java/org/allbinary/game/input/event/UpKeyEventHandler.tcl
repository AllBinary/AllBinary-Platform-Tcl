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
# package org.allbinary.game.input.event

oo::class create ::UpKeyEventHandler {
    superclass ::UpKeyEventHandlerBase
}

oo::define ::UpKeyEventHandler {
    method initFields_UpKeyEventHandler {} {
        my jset playerInputIdFactory {}
        my jset playerInputIdFactory [::LocalPlayerInputIdFactory::getInstance]
        return
    }
    
    

    method getInstanceForDevice {deviceId} {
        set playerInputId [[my jget playerInputIdFactory] getPlayerForDevice $deviceId]
        return [[::UpKeyEventHandler::staticGet_instanceArray] get $playerInputId]
    }
    

    method getInstanceForPlayer {playerInputId} {
        return [[::UpKeyEventHandler::staticGet_instanceArray] get $playerInputId]
    }
    

    constructor {} {
        next
        my initFields_UpKeyEventHandler
    }
    

    method removeAllListeners {} {
        next
        for {set index [jint [expr {[[::UpKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::UpKeyEventHandler::staticGet_instanceArray] get $index] removeAllListeners
        }
    }
    

    method removeListenerSingleThreaded {eventListenerInterface} {
        next $eventListenerInterface
        for {set index [jint [expr {[[::UpKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::UpKeyEventHandler::staticGet_instanceArray] get $index] removeListenerSingleThreaded $eventListenerInterface
        }
    }
    

    method removeListener {eventListenerInterface} {
        next $eventListenerInterface
        for {set index [jint [expr {[[::UpKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::UpKeyEventHandler::staticGet_instanceArray] get $index] removeListener $eventListenerInterface
        }
    }
}

namespace eval ::UpKeyEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::UpKeyEventHandler new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable instanceArrayValue {}
    variable instanceArraySet 0
    proc staticGet_instanceArray {} {
        variable instanceArrayValue
        variable instanceArraySet
        if {!$instanceArraySet} {
            set instanceArraySet 1
            set instanceArrayValue [jarrayfrom [list [::UpKeyEventHandlerBase new] [::UpKeyEventHandlerBase new] [::UpKeyEventHandlerBase new] [::UpKeyEventHandlerBase new] [::UpKeyEventHandlerBase new] [::UpKeyEventHandlerBase new]]]
        }
        return $instanceArrayValue
    }
    proc staticSet_instanceArray {value} {
        variable instanceArrayValue
        variable instanceArraySet
        set instanceArraySet 1
        set instanceArrayValue $value
    }
    proc getInstance {} {
        return [::UpKeyEventHandler::staticGet_instance]
    }
}


