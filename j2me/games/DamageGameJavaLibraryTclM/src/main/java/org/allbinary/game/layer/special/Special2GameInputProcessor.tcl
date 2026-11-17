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

oo::class create ::Special2GameInputProcessor {
    superclass ::SpecialGameInputProcessor
}

oo::define ::Special2GameInputProcessor {
    method initFields_Special2GameInputProcessor {} {
        return
    }
    

    constructor {collidableDestroyableDamageableLayer} {
        next $collidableDestroyableDamageableLayer
        my initFields_Special2GameInputProcessor
    }
    

    method processEvent {allbinaryLayerManager gameKeyEvent} {
        [my jget collidableDestroyableDamageableLayer] special2 $allbinaryLayerManager $gameKeyEvent
    }
}

namespace eval ::Special2GameInputProcessor {
}


