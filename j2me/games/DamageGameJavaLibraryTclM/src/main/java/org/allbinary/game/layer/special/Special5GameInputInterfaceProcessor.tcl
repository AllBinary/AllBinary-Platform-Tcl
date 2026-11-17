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
# package org.allbinary.game.layer.special

oo::class create ::Special5GameInputInterfaceProcessor {
    superclass ::SpecialGameInputInterfaceProcessor
}

oo::define ::Special5GameInputInterfaceProcessor {
    method initFields_Special5GameInputInterfaceProcessor {} {
        return
    }
    

    constructor {collidableDestroyableDamageableLayer} {
        next $collidableDestroyableDamageableLayer
        my initFields_Special5GameInputInterfaceProcessor
    }
    

    method processEvent {allbinaryLayerManager gameKeyEvent} {
        [my jget specialGameInputInterface] special5 $allbinaryLayerManager $gameKeyEvent
    }
}

namespace eval ::Special5GameInputInterfaceProcessor {
}


