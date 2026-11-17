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

oo::class create ::CreateGameRunnable {
    superclass ::JObject
}

oo::define ::CreateGameRunnable {
    method initFields_CreateGameRunnable {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset demoGameMidlet {}
        my jset hashtable {}
        my jset startGameMidletEvent {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        return
    }
    

    constructor {demoGameMidlet hashtable} {
        next
        my initFields_CreateGameRunnable
        my jset demoGameMidlet $demoGameMidlet
        my jset hashtable $hashtable
        my jset startGameMidletEvent [::DemoGameMidletEvent new [self] [[::DemoGameMidletStateFactory::getInstance] jget START_GAME]]
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            [my jget demoGameMidlet] commandAction [[::MyCommandsFactory::getInstance] jget SET_DISPLAYABLE] $progressCanvas
            [my jget demoGameMidlet] stopGameCanvasRunnableInterface
            [my jget demoGameMidlet] setGameCanvasRunnableInterface [[my jget demoGameMidlet] createGameCanvasRunnableInterface]
            [[my jget demoGameMidlet] getGameCanvasRunnableInterface] setLoadStateHashtable [my jget hashtable]
            [my jget demoGameMidlet] startGameCanvasRunnableInterface
            [::DemoGameMidletEventHandler::getInstance] fireEvent [my jget startGameMidletEvent]
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
    }
}

namespace eval ::CreateGameRunnable {
}


