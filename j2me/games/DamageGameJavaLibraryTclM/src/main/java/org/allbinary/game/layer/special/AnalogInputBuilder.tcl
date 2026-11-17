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

oo::class create ::AnalogInputBuilder {
    superclass ::JObject
}

oo::define ::AnalogInputBuilder {
    method initFields_AnalogInputBuilder {} {
        return
    }

    constructor {} {
        next
        my initFields_AnalogInputBuilder
    }
    
    

    method disable {inputProcessorArray collidableDestroyableDamageableLayer} {
        $inputProcessorArray set [::Canvas::staticGet_UP] [::SpecialUpGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_DOWN] [::SpecialDownGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_RIGHT] [::SpecialRightGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_LEFT] [::SpecialLeftGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_KEY_NUM0] [::Special1GameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_KEY_NUM5] [::Special3GameInputProcessor new $collidableDestroyableDamageableLayer]
    }
    

    method enable {inputProcessorArray collidableDestroyableDamageableLayer} {
        $inputProcessorArray set [::Canvas::staticGet_UP] [::SpecialAnalogUpGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_DOWN] [::SpecialAnalogDownGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_RIGHT] [::SpecialAnalogRightGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_LEFT] [::SpecialAnalogLeftGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_KEY_NUM0] [::SpecialAnalogLeftTriggerGameInputProcessor new $collidableDestroyableDamageableLayer]
        $inputProcessorArray set [::Canvas::staticGet_KEY_NUM5] [::SpecialAnalogRightTriggerGameInputProcessor new $collidableDestroyableDamageableLayer]
    }
}

namespace eval ::AnalogInputBuilder {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnalogInputBuilder new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::AnalogInputBuilder::staticGet_instance]
    }
}


