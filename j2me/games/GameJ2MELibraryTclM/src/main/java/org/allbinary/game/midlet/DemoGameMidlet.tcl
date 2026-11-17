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

oo::class create ::DemoGameMidlet {
    superclass ::GameMidlet
}

oo::define ::DemoGameMidlet {
    method initFields_DemoGameMidlet {} {
        return
    }
    

    constructor {clientInformationFactory} {
        next $clientInformationFactory
        my initFields_DemoGameMidlet
    }
    

    method isContinue {} {
        set hashtable [my getStartStateHashtable]
        if {[expr {[expr {$hashtable ne {}}] && [expr {[$hashtable size] > 0}]}]} {
            return true
        } else {
            return false
        }
    }
    

    method getHighestLevel {} {
        return 1
    }
    

    method createDemoGameCanvasRunnableInterface {} {
        [my jget logUtil] putF [[my jget commonStrings] jget NOT_IMPLEMENTED] [self] [[my jget commonStrings] jget CREATE]
        return [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]
    }
    

    method createGameCanvasRunnable {allBinaryGameLayerManager} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method createGameCanvasRunnableInterface {} {
        return [my createGameCanvasRunnable [my createGameLayerManager]]
    }
    

    method demoSetup {} {
    }
    

    method postDemoSetup {} {
    }
    

    method setDemo {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "setDemo"
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas start
        [::PrimaryThreadPool::getInstance] runTask [::DemoRunnable new [self]]
    }
    

    method createGame {} {
        set CREATE_GAME "createGame"
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] $CREATE_GAME
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas start
        set hashtable [my getStartStateHashtable]
        my setStartStateHashtable [[::StdUtil::getInstance] jget NULL_TABLE]
        [::PrimaryThreadPool::getInstance] runTask [::CreateGameRunnable new [self] $hashtable]
        [my jget logUtil] putF [[my jget commonStrings] jget END] [self] $CREATE_GAME
    }
    

    method isReady {} {
        return true
    }
}

namespace eval ::DemoGameMidlet {
}


