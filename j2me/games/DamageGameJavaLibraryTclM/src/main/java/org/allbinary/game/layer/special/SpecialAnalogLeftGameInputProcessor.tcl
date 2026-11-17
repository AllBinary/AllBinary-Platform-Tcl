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

oo::class create ::SpecialAnalogLeftGameInputProcessor {
    superclass ::SpecialGameInputProcessor
}

oo::define ::SpecialAnalogLeftGameInputProcessor {
    method initFields_SpecialAnalogLeftGameInputProcessor {} {
        return
    }
    

    constructor {collidableDestroyableDamageableLayer} {
        next $collidableDestroyableDamageableLayer
        my initFields_SpecialAnalogLeftGameInputProcessor
    }
    

    method processAnalog {allbinaryLayerManager gameKeyEvent xAnalogValue} {
        [my jget collidableDestroyableDamageableLayer] leftAnalog $xAnalogValue
    }
}

namespace eval ::SpecialAnalogLeftGameInputProcessor {
}


