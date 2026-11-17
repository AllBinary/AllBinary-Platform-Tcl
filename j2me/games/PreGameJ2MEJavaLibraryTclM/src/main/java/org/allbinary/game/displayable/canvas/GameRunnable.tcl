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

oo::class create ::GameRunnable {
    superclass ::JObject
}

oo::define ::GameRunnable {
    method initFields_GameRunnable {} {
        my jset WAIT 0
        my jset FAST 0
        my jset waitInMillis 0
        my jset WAIT 240
        my jset FAST 60
        my jset waitInMillis [my jget WAIT]
        return
    }
    

    constructor {} {
        next
        my initFields_GameRunnable
    }
    

    method run {} {
        [::DisplayInfoSingleton::getInstance] process
    }
    

    method processLoopSleep {} {
        ::Thread::sleep [my jget waitInMillis]
    }
}

namespace eval ::GameRunnable {
}


