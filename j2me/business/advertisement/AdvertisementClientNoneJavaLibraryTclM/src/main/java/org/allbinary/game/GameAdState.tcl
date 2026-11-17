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
# package org.allbinary.game

oo::class create ::GameAdState {
    superclass ::GameAdStateBase
}

oo::define ::GameAdState {
    method initFields_GameAdState {} {
        return
    }
    

    constructor {adConfiguration} {
        next $adConfiguration
        my initFields_GameAdState
        [::VirtualKeyboardEventHandler::getInstance] addListenerInterface [self]
    }
    

    method onVirtualKeyboardEvent {virtualKeyboardEvent} {
    }
    

    method onEvent {eventObject} {
        next $eventObject
    }
}

namespace eval ::GameAdState {
}


