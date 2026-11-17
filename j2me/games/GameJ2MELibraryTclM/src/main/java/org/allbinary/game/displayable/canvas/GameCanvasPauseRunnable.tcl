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

oo::class create ::GameCanvasPauseRunnable {
    superclass ::GameRunnable
}

oo::define ::GameCanvasPauseRunnable {
    method initFields_GameCanvasPauseRunnable {} {
        my jset logUtil {}
        my jset allBinaryGameCanvas {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {allBinaryGameCanvas} {
        next
        my initFields_GameCanvasPauseRunnable
        my jset allBinaryGameCanvas $allBinaryGameCanvas
    }
    

    method run {} {
    }
    

    method processLoopSleep {} {
        try {
            set features [::Features::getInstance]
            set isOpenGL [$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]
            if {$isOpenGL} {
                [my jget allBinaryGameCanvas] processSleep
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
}

namespace eval ::GameCanvasPauseRunnable {
}


