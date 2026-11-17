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

oo::class create ::DemoGameMidletEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::DemoGameMidletEvent {
    method initFields_DemoGameMidletEvent {} {
        my jset demoGameMidletState {}
        
        return
    }
    

    constructor {anyType demoGameMidletState} {
        next $anyType
        my initFields_DemoGameMidletEvent
        my jset demoGameMidletState $demoGameMidletState
    }
    

    method init {anyType} {
        my setSource $anyType
    }
    

    method setDemoGameMidletState {demoGameMidletState} {
        my jset demoGameMidletState $demoGameMidletState
    }
    

    method getDemoGameMidletState {} {
        return [my jget demoGameMidletState]
    }
}

namespace eval ::DemoGameMidletEvent {
}


