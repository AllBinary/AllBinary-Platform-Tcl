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

oo::class create ::SpecialAnalogUpGameInputProcessor {
    superclass ::SpecialGameInputProcessor
}

oo::define ::SpecialAnalogUpGameInputProcessor {
    method initFields_SpecialAnalogUpGameInputProcessor {} {
        return
    }
    

    constructor {collidableDestroyableDamageableLayer} {
        next $collidableDestroyableDamageableLayer
        my initFields_SpecialAnalogUpGameInputProcessor
    }
    

    method processAnalog {allbinaryLayerManager gameKeyEvent yAnalogValue} {
        [my jget collidableDestroyableDamageableLayer] upAnalog $yAnalogValue
    }
}

namespace eval ::SpecialAnalogUpGameInputProcessor {
}


