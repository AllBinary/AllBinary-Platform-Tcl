#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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

oo::class create ::InitGameProcessor {
    superclass ::Processor
}

oo::define ::InitGameProcessor {
    method initFields_InitGameProcessor {} {
        my jset gameCanvas {}
        
        return
    }
    

    constructor {gameCanvas} {
        next
        my initFields_InitGameProcessor
        my jset gameCanvas $gameCanvas
    }
    

    method process {} {
        if {[[::ProgressCanvasFactory::getInstance] isInGame]} {
            [my jget gameCanvas] setProcessGameProcessorInit
        }
    }
}

namespace eval ::InitGameProcessor {
}


