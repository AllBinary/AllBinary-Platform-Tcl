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
# package org.allbinary.input.event

oo::class create ::VirtualKeyboardEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::VirtualKeyboardEventHandler {
    method initFields_VirtualKeyboardEventHandler {} {
        my jset SHOW_EVENT {}
        my jset HIDE_EVENT {}
        my jset SHOW_EVENT [::VirtualKeyboardEvent new [[::BooleanFactory::getInstance] jget TRUE]]
        my jset HIDE_EVENT [::VirtualKeyboardEvent new [[::BooleanFactory::getInstance] jget FALSE]]
        return
    }
    

    constructor {} {
        next
        my initFields_VirtualKeyboardEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set virtualKeyboardEventListenerInterface $eventListenerInterface
        $virtualKeyboardEventListenerInterface onVirtualKeyboardEvent $eventObject
    }
    

    method open {} {
        try {
            ::Thread::sleep 120
            my fireEvent [my jget SHOW_EVENT]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "open" $e
        }
    }
    

    method close {} {
        try {
            ::Thread::sleep 120
            my fireEvent [my jget HIDE_EVENT]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget CLOSE] $e
        }
    }
}

namespace eval ::VirtualKeyboardEventHandler {
    variable gameKeyEventHandlerValue {}
    variable gameKeyEventHandlerSet 0
    proc staticGet_gameKeyEventHandler {} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        if {!$gameKeyEventHandlerSet} {
            set gameKeyEventHandlerSet 1
            set gameKeyEventHandlerValue [::VirtualKeyboardEventHandler new]
        }
        return $gameKeyEventHandlerValue
    }
    proc staticSet_gameKeyEventHandler {value} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        set gameKeyEventHandlerSet 1
        set gameKeyEventHandlerValue $value
    }
    proc getInstance {} {
        return [::VirtualKeyboardEventHandler::staticGet_gameKeyEventHandler]
    }
}


