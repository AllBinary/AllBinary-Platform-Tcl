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
# package org.allbinary.game.midlet

oo::class create ::DemoRunnable {
    superclass ::JObject
}

oo::define ::DemoRunnable {
    method initFields_DemoRunnable {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset demoGameMidlet {}
        my jset startDemoGameMidletEvent {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        return
    }
    

    constructor {demoGameMidlet} {
        next
        my initFields_DemoRunnable
        my jset demoGameMidlet $demoGameMidlet
        my jset startDemoGameMidletEvent [::DemoGameMidletEvent new [my jget demoGameMidlet] [[::DemoGameMidletStateFactory::getInstance] jget START_DEMO]]
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append "GameCanvasRunnableInterface"] toString] [self] [[my jget commonStrings] jget RUN]
            [my jget demoGameMidlet] commandAction [[::MyCommandsFactory::getInstance] jget SET_DISPLAYABLE] [::ProgressCanvasFactory::getInstance]
            [my jget demoGameMidlet] setGameCanvasRunnableInterface [[my jget demoGameMidlet] createDemoGameCanvasRunnableInterface]
            [my jget demoGameMidlet] demoSetup
            [::DemoGameMidletEventHandler::getInstance] fireEvent [my jget startDemoGameMidletEvent]
            [my jget demoGameMidlet] startGameCanvasRunnableInterface
            [my jget demoGameMidlet] postDemoSetup
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
    }
}

namespace eval ::DemoRunnable {
}


