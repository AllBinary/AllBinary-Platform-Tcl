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

oo::class create ::DownKeyEventHandlerBase {
    superclass ::BasicEventHandler
}

oo::define ::DownKeyEventHandlerBase {
    method initFields_DownKeyEventHandlerBase {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_DownKeyEventHandlerBase
    }
    

    method addListener {playerGameInput} {
        if {[expr {![[my jget list] contains $playerGameInput]}]} {
            [my jget list] add $playerGameInput
        }
    }
    

    method removeAllListeners {} {
        [my jget list] clear
        next
    }
    

    method removeListenerSingleThreaded {eventListenerInterface} {
        [my jget list] remove $eventListenerInterface
        next $eventListenerInterface
    }
    

    method removeListener {eventListenerInterface} {
        [my jget list] remove $eventListenerInterface
        next $eventListenerInterface
    }
    

    method fireEventI {eventObject} {
        for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set playerGameInput [[[my jget list] jget objectArray] get $index]
                $playerGameInput onDownKey $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        set index 0
        set eventListenerInterface {}
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                my processI $eventObject $eventListenerInterface
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
            jpostincr index 1
        }
    }
    

    method fireEventForGameKeyEvent {eventObject} {
        set size [[my jget list] size]
        for {set index $size} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set playerGameInput [[[my jget list] jget objectArray] get $index]
                $playerGameInput onDownKeyEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        set index 0
        set eventListenerInterface {}
        while {[expr {$index < [[my jget eventListenerInterfaceList] size]}]} {
            try {
                set eventListenerInterface [[my jget eventListenerInterfaceList] get $index]
                my processEvent $eventObject $eventListenerInterface
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
            jpostincr index 1
        }
    }
    

    method processI {eventObject eventListenerInterface} {
        set downKeyEventListenerInterface $eventListenerInterface
        $downKeyEventListenerInterface onDownKey $eventObject
    }
    

    method processEvent {eventObject eventListenerInterface} {
        set downKeyEventListenerInterface $eventListenerInterface
        $downKeyEventListenerInterface onDownKeyEvent $eventObject
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [next]
        $stringBuffer append [::DownKeyEventHandlerBase::staticGet_TOTAL_LISTENERS]
        $stringBuffer appendint [[my jget list] size]
        set eventListenerInterface {}
        for {set index 0} {[expr {$index < [[my jget list] size]}]} {jpostincr index 1} {
            try {
                set eventListenerInterface [[my jget list] get $index]
                $stringBuffer append [::DownKeyEventHandlerBase::staticGet_LISTENER_LABEL]
                $stringBuffer append [$eventListenerInterface toString]
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget TOSTRING] $e
            }
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::DownKeyEventHandlerBase {
    variable TOTAL_LISTENERSValue {}
    variable TOTAL_LISTENERSSet 0
    proc staticGet_TOTAL_LISTENERS {} {
        variable TOTAL_LISTENERSValue
        variable TOTAL_LISTENERSSet
        if {!$TOTAL_LISTENERSSet} {
            set TOTAL_LISTENERSSet 1
            set TOTAL_LISTENERSValue " Total PlayerGameInput Listeners: "
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
            set LISTENER_LABELValue " PlayerGameInput Listener: "
        }
        return $LISTENER_LABELValue
    }
    proc staticSet_LISTENER_LABEL {value} {
        variable LISTENER_LABELValue
        variable LISTENER_LABELSet
        set LISTENER_LABELSet 1
        set LISTENER_LABELValue $value
    }
}


