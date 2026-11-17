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

oo::class create ::StartIntermissionProcessor {
    superclass ::Processor
}

oo::define ::StartIntermissionProcessor {
    method initFields_StartIntermissionProcessor {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset gameCanvas {}
        my jset WAIT 0
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        my jset WAIT 5000
        return
    }
    

    constructor {gameCanvas} {
        next
        my initFields_StartIntermissionProcessor
        my jset gameCanvas $gameCanvas
    }
    

    method process {} {
        if {[[[[my jget gameCanvas] getStartIntermissionInterface] getTimeDelayHelper] isElapsedTNT [my jget WAIT]]} {
            [my jget logUtil] putF "Intermission End" [self] [[my jget commonStrings] jget PROCESS]
            [[my jget gameCanvas] getStartIntermissionInterface] setEnabled false
        }
    }
}

namespace eval ::StartIntermissionProcessor {
}


