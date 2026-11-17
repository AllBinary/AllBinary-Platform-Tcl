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

oo::class create ::DownKeyEventHandler {
    superclass ::DownKeyEventHandlerBase
}

oo::define ::DownKeyEventHandler {
    method initFields_DownKeyEventHandler {} {
        my jset playerInputIdFactory {}
        my jset playerInputIdFactory [::LocalPlayerInputIdFactory::getInstance]
        return
    }
    
    

    method getInstanceForDevice {deviceId} {
        set playerInputId [[my jget playerInputIdFactory] getPlayerForDevice $deviceId]
        return [[::DownKeyEventHandler::staticGet_instanceArray] get $playerInputId]
    }
    

    method getInstanceForPlayer {playerInputId} {
        return [[::DownKeyEventHandler::staticGet_instanceArray] get $playerInputId]
    }
    

    constructor {} {
        next
        my initFields_DownKeyEventHandler
    }
    

    method removeAllListeners {} {
        next
        for {set index [jint [expr {[[::DownKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::DownKeyEventHandler::staticGet_instanceArray] get $index] removeAllListeners
        }
    }
    

    method removeListenerSingleThreaded {eventListenerInterface} {
        next $eventListenerInterface
        for {set index [jint [expr {[[::DownKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::DownKeyEventHandler::staticGet_instanceArray] get $index] removeListenerSingleThreaded $eventListenerInterface
        }
    }
    

    method removeListener {eventListenerInterface} {
        next $eventListenerInterface
        for {set index [jint [expr {[[::DownKeyEventHandler::staticGet_instanceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[::DownKeyEventHandler::staticGet_instanceArray] get $index] removeListener $eventListenerInterface
        }
    }
}

namespace eval ::DownKeyEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DownKeyEventHandler new]
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
            set instanceArrayValue [jarrayfrom [list [::DownKeyEventHandlerBase new] [::DownKeyEventHandlerBase new] [::DownKeyEventHandlerBase new] [::DownKeyEventHandlerBase new] [::DownKeyEventHandlerBase new] [::DownKeyEventHandlerBase new]]]
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
        return [::DownKeyEventHandler::staticGet_instance]
    }
}


