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

oo::class create ::NullGameCanvas {
    superclass ::AllBinaryGameCanvas
}

oo::define ::NullGameCanvas {
    method initFields_NullGameCanvas {} {
        my jset runningNull false
        my jset runningNull true
        return
    }
    
    
    
    

    constructor {gameLayerManager} {
        next [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER] $gameLayerManager [::NoHighScoresFactory::getInstance] [::BasicBuildGameInitializerFactory::staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY] false
        my initFields_NullGameCanvas
        next 1200
    }
    

    method isGameOver {} {
        return false
    }
    

    method setRunning {running} {
        my jset runningNull $running
    }
    

    method isRunning {} {
        return [my jget runningNull]
    }
    

    method pause {} {
        my setPaused true
    }
    

    method unPause {} {
        my setPaused false
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my setCommandListener $cmdListener
    }
    

    method buildGameInit {isProgress} {
    }
    

    method draw {graphics} {
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
    }
    

    method getType {} {
        return [::NullGameCanvas::staticGet_TYPE]
    }
}

namespace eval ::NullGameCanvas {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable NO_GAMEValue {}
    variable NO_GAMESet 0
    proc staticGet_NO_GAME {} {
        variable NO_GAMEValue
        variable NO_GAMESet
        if {!$NO_GAMESet} {
            set NO_GAMESet 1
            set NO_GAMEValue "No Background Game"
        }
        return $NO_GAMEValue
    }
    proc staticSet_NO_GAME {value} {
        variable NO_GAMEValue
        variable NO_GAMESet
        set NO_GAMESet 1
        set NO_GAMEValue $value
    }
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue 1
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
    proc createNull {} {
        try {
            return [::NullGameCanvas new [::AllBinaryGameLayerManager::getNullInstance]]
        } on error {e} {
            [::LogUtil::getInstance] put [[::CommonStrings::getInstance] jget EXCEPTION] "NullGameCanvas" [[::CommonStrings::getInstance] jget GET_INSTANCE] $e
            error [jexception RuntimeException {}]
        }
    }
    proc getInstance {} {
        if {[expr {[::NullGameCanvas::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::NullGameCanvas::staticSet_instance [::NullGameCanvas::createNull]
        }
        return [::NullGameCanvas::staticGet_instance]
    }
    proc createCanvas {gameLayerManager} {
        set nullGameCanvas [::NullGameCanvas new $gameLayerManager]
        $nullGameCanvas setInitialized true
        $nullGameCanvas setTitle [::NullGameCanvas::staticGet_NO_GAME]
        return $nullGameCanvas
    }
}


