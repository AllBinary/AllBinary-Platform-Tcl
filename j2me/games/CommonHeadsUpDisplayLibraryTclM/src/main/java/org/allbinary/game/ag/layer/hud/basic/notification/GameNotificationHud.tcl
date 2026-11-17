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
# package org.allbinary.game.ag.layer.hud.basic.notification

oo::class create ::GameNotificationHud {
    superclass ::BasicHud
}

oo::define ::GameNotificationHud {
    method initFields_GameNotificationHud {} {
        my jset METHOD_NAME {}
        my jset lastGameNotificationEvent {}
        my jset METHOD_NAME "onGameNotificationEvent"
        my jset lastGameNotificationEvent [::GameNotification::staticGet_NULL_GAME_NOTIFICATION_EVENT]
        return
    }
    

    constructor {location direction bufferZone basicColor} {
        next $location $direction $bufferZone $basicColor
        my initFields_GameNotificationHud
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onGameNotificationEvent {gameNotificationEvent} {
        if {[expr {[my jget lastGameNotificationEvent] ne $gameNotificationEvent}]} {
            my jset lastGameNotificationEvent $gameNotificationEvent
            [my jget logUtil] putF [$gameNotificationEvent getString] [self] [my jget METHOD_NAME]
        }
        my add [$gameNotificationEvent getString] [$gameNotificationEvent getSeconds] [$gameNotificationEvent getBasicColorP] [$gameNotificationEvent getPermanent]
    }
    

    method add {string seconds basicColor permanent} {
    }
    

    method processTick {} {
    }
    

    method paint {graphics} {
    }
    

    method clear {} {
    }
}

namespace eval ::GameNotificationHud {
    variable NULL_GAME_NOTIFICATIONValue {}
    variable NULL_GAME_NOTIFICATIONSet 0
    proc staticGet_NULL_GAME_NOTIFICATION {} {
        variable NULL_GAME_NOTIFICATIONValue
        variable NULL_GAME_NOTIFICATIONSet
        if {!$NULL_GAME_NOTIFICATIONSet} {
            set NULL_GAME_NOTIFICATIONSet 1
            set NULL_GAME_NOTIFICATIONValue [::GameNotificationHud new [[::BasicHudFactory::getInstance] jget TOPCENTER] [[::BasicHudFactory::getInstance] jget HORIZONTAL] 0 [[::BasicColorFactory::getInstance] jget RED]]
        }
        return $NULL_GAME_NOTIFICATIONValue
    }
    proc staticSet_NULL_GAME_NOTIFICATION {value} {
        variable NULL_GAME_NOTIFICATIONValue
        variable NULL_GAME_NOTIFICATIONSet
        set NULL_GAME_NOTIFICATIONSet 1
        set NULL_GAME_NOTIFICATIONValue $value
    }
}


