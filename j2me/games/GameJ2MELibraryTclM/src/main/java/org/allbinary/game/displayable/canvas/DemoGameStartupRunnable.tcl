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

oo::class create ::DemoGameStartupRunnable {
    superclass ::ABRunnable
}

oo::define ::DemoGameStartupRunnable {
    method initFields_DemoGameStartupRunnable {} {
        my jset logUtil {}
        my jset demoCanvas {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {demoCanvas} {
        next
        my initFields_DemoGameStartupRunnable
        my jset demoCanvas $demoCanvas
    }
    

    method run {} {
        try {
            my setRunning true
            [my jget demoCanvas] stopGameDemo
            [my jget demoCanvas] create
            [my jget demoCanvas] start
            my setRunning false
        } on error {e} {
            my setRunning false
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
    

    method getType {} {
        return [::DemoGameStartupRunnable::staticGet_TYPE]
    }
}

namespace eval ::DemoGameStartupRunnable {
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue 4
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
}


