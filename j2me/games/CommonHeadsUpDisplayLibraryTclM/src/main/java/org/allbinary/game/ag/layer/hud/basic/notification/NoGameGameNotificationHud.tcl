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

oo::class create ::NoGameGameNotificationHud {
    superclass ::GameNotificationHud
}

oo::define ::NoGameGameNotificationHud {
    method initFields_NoGameGameNotificationHud {} {
        return
    }
    

    constructor {} {
        next [[::BasicHudFactory::getInstance] jget TOPCENTER] [[::BasicHudFactory::getInstance] jget HORIZONTAL] 2 [[::BasicColorFactory::getInstance] jget RED]
        my initFields_NoGameGameNotificationHud
        my jset updateMaxWidth 40
        my jset updateMaxHeight 14
    }
}

namespace eval ::NoGameGameNotificationHud {
}


