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

oo::class create ::GameProcessor {
    superclass ::Processor
}

oo::define ::GameProcessor {
    method initFields_GameProcessor {} {
        my jset gameCanvas {}
        
        return
    }
    

    constructor {gameCanvas} {
        next
        my initFields_GameProcessor
        my jset gameCanvas $gameCanvas
    }
    

    method process {} {
        [my jget gameCanvas] processPlayingGame
    }
}

namespace eval ::GameProcessor {
}


