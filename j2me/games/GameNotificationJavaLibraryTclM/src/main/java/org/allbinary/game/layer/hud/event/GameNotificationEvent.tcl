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
# package org.allbinary.game.layer.hud.event

oo::class create ::GameNotificationEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::GameNotificationEvent {
    method initFields_GameNotificationEvent {} {
        my jset string {}
        my jset seconds {}
        my jset basicColor {}
        my jset removeable {}
        my jset string [[::StringUtil::getInstance] jget EMPTY_STRING]
        
        my jset basicColor [[::BasicColorFactory::getInstance] jget BLACK]
        
        return
    }
    

    constructor {anyType string seconds basicColor permanent} {
        next $anyType
        my initFields_GameNotificationEvent
        my setString $string
        my jset seconds $seconds
        my setBasicColorP $basicColor
        my jset removeable $permanent
    }
    

    method getString {} {
        return [my jget string]
    }
    

    method getSeconds {} {
        return [my jget seconds]
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method getPermanent {} {
        return [my jget removeable]
    }
    

    method setString {string} {
        my jset string $string
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
}

namespace eval ::GameNotificationEvent {
}


