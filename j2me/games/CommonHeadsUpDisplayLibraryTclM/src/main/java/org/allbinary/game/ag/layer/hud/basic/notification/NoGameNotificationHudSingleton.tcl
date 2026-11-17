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

oo::class create ::NoGameNotificationHudSingleton {
    superclass ::JObject
}

oo::define ::NoGameNotificationHudSingleton {
    method initFields_NoGameNotificationHudSingleton {} {
        my jset logUtil {}
        my jset gameNotificationHud {}
        my jset logUtil [::LogUtil::getInstance]
        my jset gameNotificationHud [::GameNotificationHud::staticGet_NULL_GAME_NOTIFICATION]
        return
    }
    
    

    constructor {} {
        next
        my initFields_NoGameNotificationHudSingleton
        try {
            set basicHudFactory [::BasicHudFactory::getInstance]
            my jset gameNotificationHud [::NoGameGameNotificationHud new]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method getGameNotificationHud {} {
        return [my jget gameNotificationHud]
    }
}

namespace eval ::NoGameNotificationHudSingleton {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoGameNotificationHudSingleton new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::NoGameNotificationHudSingleton::staticGet_instance]
    }
}


