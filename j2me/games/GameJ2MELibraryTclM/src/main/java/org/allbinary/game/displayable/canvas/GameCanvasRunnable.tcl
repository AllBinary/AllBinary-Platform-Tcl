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
# package org.allbinary.game.displayable.canvas

oo::class create ::GameCanvasRunnable {
    superclass ::GameRunnable
}

oo::define ::GameCanvasRunnable {
    method initFields_GameCanvasRunnable {} {
        my jset logUtil {}
        my jset gameTickDisplayInfoSingleton {}
        my jset allBinaryGameCanvas {}
        my jset gameTickTimeDelayHelper {}
        my jset logUtil [::LogUtil::getInstance]
        my jset gameTickDisplayInfoSingleton [::GameTickDisplayInfoSingleton::getInstance]
        
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        return
    }
    

    constructor {allBinaryGameCanvas} {
        next
        my initFields_GameCanvasRunnable
        my jset allBinaryGameCanvas $allBinaryGameCanvas
    }
    

    method run {} {
        try {
            [[my jget allBinaryGameCanvas] getLoopTimeHelperP] setStartTime [[my jget gameTickTimeDelayHelper] setStartTime]
            [my jget gameTickDisplayInfoSingleton] update
            [my jget allBinaryGameCanvas] processGame
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
    

    method processLoopSleep {} {
        [my jget allBinaryGameCanvas] processLoopSleep
    }
}

namespace eval ::GameCanvasRunnable {
}


