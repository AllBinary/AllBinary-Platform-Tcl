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
# package org.allbinary.game.init

oo::class create ::DefaultGameInitializationListener {
    superclass ::JObject
}

oo::define ::DefaultGameInitializationListener {
    method initFields_DefaultGameInitializationListener {} {
        my jset logUtil {}
        my jset swtJOGLProcessor {}
        my jset firstTime false
        my jset logUtil [::LogUtil::getInstance]
        my jset swtJOGLProcessor [::SWTJOGLProcessor::getInstance]
        my jset firstTime true
        return
    }
    

    constructor {} {
        next
        my initFields_DefaultGameInitializationListener
        set gameInitializedEventHandler [::GameInitializedEventHandler::getInstance]
        $gameInitializedEventHandler removeAllListeners
        $gameInitializedEventHandler addListenerInterface [self]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onGameInitialized {gameInitializedEvent} {
        set ON_GAME_INITIALIZED "onGameInitialized"
        set commonStrings [::CommonStrings::getInstance]
        try {
            [my jget logUtil] putF [$commonStrings jget START] [self] $ON_GAME_INITIALIZED
            while {[expr {![[my jget swtJOGLProcessor] isHolderCreated]}]} {
                [my jget logUtil] putF [$commonStrings jget UPDATE] [self] $ON_GAME_INITIALIZED
                ::Thread::sleep 20
            }
            [::FeatureResourceInitializationUtil::getInstance] init [$gameInitializedEvent getLevel]
            if {[my jget firstTime]} {
                my jset firstTime false
            } else {
                [my jget swtJOGLProcessor] onSurfaceChanged
            }
        } on error {e} {
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] $ON_GAME_INITIALIZED $e
        }
    }
}

namespace eval ::DefaultGameInitializationListener {
}


