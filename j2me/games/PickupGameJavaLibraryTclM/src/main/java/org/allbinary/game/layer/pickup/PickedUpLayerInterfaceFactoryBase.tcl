# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer.pickup

oo::class create ::PickedUpLayerInterfaceFactoryBase {
    superclass ::JObject
}

oo::define ::PickedUpLayerInterfaceFactoryBase {
    method initFields_PickedUpLayerInterfaceFactoryBase {} {
        return
    }

    constructor {} {
        next
        my initFields_PickedUpLayerInterfaceFactoryBase
    }
    

    method getIconLayer {} {
        error [jexception RuntimeException {}]
    }
    

    method getAnimationInterface {} {
        error [jexception RuntimeException {}]
    }
    

    method getPickedUpLayerType {} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::PickedUpLayerInterfaceFactoryBase {
    variable NULL_PICKED_UP_LAYER_FACTORY_BASEValue {}
    variable NULL_PICKED_UP_LAYER_FACTORY_BASESet 0
    proc staticGet_NULL_PICKED_UP_LAYER_FACTORY_BASE {} {
        variable NULL_PICKED_UP_LAYER_FACTORY_BASEValue
        variable NULL_PICKED_UP_LAYER_FACTORY_BASESet
        if {!$NULL_PICKED_UP_LAYER_FACTORY_BASESet} {
            set NULL_PICKED_UP_LAYER_FACTORY_BASESet 1
            set NULL_PICKED_UP_LAYER_FACTORY_BASEValue [::PickedUpLayerInterfaceFactoryBase new]
        }
        return $NULL_PICKED_UP_LAYER_FACTORY_BASEValue
    }
    proc staticSet_NULL_PICKED_UP_LAYER_FACTORY_BASE {value} {
        variable NULL_PICKED_UP_LAYER_FACTORY_BASEValue
        variable NULL_PICKED_UP_LAYER_FACTORY_BASESet
        set NULL_PICKED_UP_LAYER_FACTORY_BASESet 1
        set NULL_PICKED_UP_LAYER_FACTORY_BASEValue $value
    }
}


