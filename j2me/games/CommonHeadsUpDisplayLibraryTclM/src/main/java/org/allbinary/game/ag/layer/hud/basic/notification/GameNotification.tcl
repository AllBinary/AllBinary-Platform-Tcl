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

oo::class create ::GameNotification {
    superclass ::JObject
}

oo::define ::GameNotification {
    method initFields_GameNotification {} {
        my jset stringList {}
        my jset timeList {}
        my jset colorList {}
        my jset stringList [::BasicArrayListD new]
        my jset timeList [::BasicArrayListD new]
        my jset colorList [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_GameNotification
    }
    

    method add {string seconds basicColor} {
        if {[expr {![[my jget stringList] contains $string]}]} {
            [my jget stringList] add $string
            [my jget timeList] add $seconds
            [my jget colorList] add $basicColor
        }
    }
    

    method clear {} {
        [my jget stringList] clear
        [my jget timeList] clear
        [my jget colorList] clear
    }
    

    method getSize {} {
        return [[my jget stringList] size]
    }
}

namespace eval ::GameNotification {
    variable NULL_GAME_NOTIFICATION_EVENTValue {}
    variable NULL_GAME_NOTIFICATION_EVENTSet 0
    proc staticGet_NULL_GAME_NOTIFICATION_EVENT {} {
        variable NULL_GAME_NOTIFICATION_EVENTValue
        variable NULL_GAME_NOTIFICATION_EVENTSet
        if {!$NULL_GAME_NOTIFICATION_EVENTSet} {
            set NULL_GAME_NOTIFICATION_EVENTSet 1
            set NULL_GAME_NOTIFICATION_EVENTValue [::GameNotificationEvent new [[::NullUtil::getInstance] jget NULL_OBJECT] [[::StringUtil::getInstance] jget EMPTY_STRING] 0 [[::BasicColorFactory::getInstance] jget RED] [[::BooleanFactory::getInstance] jget FALSE]]
        }
        return $NULL_GAME_NOTIFICATION_EVENTValue
    }
    proc staticSet_NULL_GAME_NOTIFICATION_EVENT {value} {
        variable NULL_GAME_NOTIFICATION_EVENTValue
        variable NULL_GAME_NOTIFICATION_EVENTSet
        set NULL_GAME_NOTIFICATION_EVENTSet 1
        set NULL_GAME_NOTIFICATION_EVENTValue $value
    }
}


