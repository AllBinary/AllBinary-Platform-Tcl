# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

oo::class create ::RepaintRunnable {
    superclass ::ARunnable
}

oo::define ::RepaintRunnable {
    method initFields_RepaintRunnable {} {
        my jset canvas {}
        
        return
    }
    

    constructor {canvas} {
        next
        my initFields_RepaintRunnable
        my jset canvas $canvas
    }
    

    method run {} {
        try {
            [my jget canvas] repaint
            [::DisplayInfoSingleton::getInstance] process
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            set logUtil [::LogUtil::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
}

namespace eval ::RepaintRunnable {
}


