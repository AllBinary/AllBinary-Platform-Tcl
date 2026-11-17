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

oo::class create ::DemoGameRunnable {
    superclass ::GameRunnable
}

oo::define ::DemoGameRunnable {
    method initFields_DemoGameRunnable {} {
        my jset logUtil {}
        my jset demoCanvas {}
        my jset gameTickTimeDelayHelper {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        return
    }
    

    constructor {demoCanvas} {
        next
        my initFields_DemoGameRunnable
        my jset demoCanvas $demoCanvas
    }
    

    method run {} {
        try {
            [[my jget demoCanvas] getLoopTimeHelperP] setStartTime [[my jget gameTickTimeDelayHelper] setStartTime]
            [my jget demoCanvas] processGame
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
    

    method processLoopSleep {} {
        [my jget demoCanvas] processLoopSleep
    }
}

namespace eval ::DemoGameRunnable {
}


