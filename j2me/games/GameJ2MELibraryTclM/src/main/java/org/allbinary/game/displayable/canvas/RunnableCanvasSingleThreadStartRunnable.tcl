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

oo::class create ::RunnableCanvasSingleThreadStartRunnable {
    superclass ::GameRunnable
}

oo::define ::RunnableCanvasSingleThreadStartRunnable {
    method initFields_RunnableCanvasSingleThreadStartRunnable {} {
        my jset logUtil {}
        my jset runnableCanvas {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {demoCanvas} {
        next
        my initFields_RunnableCanvasSingleThreadStartRunnable
        my jset runnableCanvas $demoCanvas
    }
    

    method run {} {
        try {
            [my jget runnableCanvas] run
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
    

    method processLoopSleep {} {
        [my jget runnableCanvas] processLoopSleep
    }
}

namespace eval ::RunnableCanvasSingleThreadStartRunnable {
}


