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

oo::class create ::SpecialAnalogLeftTriggerGameInputProcessor {
    superclass ::SpecialGameInputProcessor
}

oo::define ::SpecialAnalogLeftTriggerGameInputProcessor {
    method initFields_SpecialAnalogLeftTriggerGameInputProcessor {} {
        return
    }
    

    constructor {collidableDestroyableDamageableLayer} {
        next $collidableDestroyableDamageableLayer
        my initFields_SpecialAnalogLeftTriggerGameInputProcessor
    }
    

    method processAnalog {allbinaryLayerManager gameKeyEvent yAnalogValue} {
        [my jget collidableDestroyableDamageableLayer] leftTrigger $allbinaryLayerManager $gameKeyEvent $yAnalogValue
    }
}

namespace eval ::SpecialAnalogLeftTriggerGameInputProcessor {
}


