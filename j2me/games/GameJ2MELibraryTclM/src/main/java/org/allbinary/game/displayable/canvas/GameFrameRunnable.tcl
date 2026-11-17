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

oo::class create ::GameFrameRunnable {
    superclass ::GameRunnable
}

oo::define ::GameFrameRunnable {
    method initFields_GameFrameRunnable {} {
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
        my initFields_GameFrameRunnable
        my jset allBinaryGameCanvas $allBinaryGameCanvas
    }
    

    method run {} {
        try {
            set allBinaryGameCanvas [my jget allBinaryGameCanvas]
            [$allBinaryGameCanvas getLoopTimeHelperP] setStartTime [[my jget gameTickTimeDelayHelper] setStartTime]
            [my jget gameTickDisplayInfoSingleton] update
            $allBinaryGameCanvas processGame
            if {[expr {[expr {![$allBinaryGameCanvas isRunning]}] || [$allBinaryGameCanvas isPaused]}]} {
                $allBinaryGameCanvas notifyDonePainting
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
}

namespace eval ::GameFrameRunnable {
}


