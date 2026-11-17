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
# package org.allbinary.game.layer.pickup

oo::class create ::CountedPickedUpLayerInterfaceFactory {
    superclass ::PickedUpLayerInterfaceFactory
}

oo::define ::CountedPickedUpLayerInterfaceFactory {
    method initFields_CountedPickedUpLayerInterfaceFactory {} {
        my jset id 0
        
        return
    }
    

    constructor {pickeUpLayerType iconLayer animationInterface} {
        next $pickeUpLayerType $iconLayer $animationInterface
        my initFields_CountedPickedUpLayerInterfaceFactory
        set list [[::CountedPickedUpLayerInterfaceFactoryPool::getInstance] getList]
        my jset id [$list size]
        $list add [self]
    }
    

    method getNextInstance {hashtable x y z} {
        error [jexception Exception [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED]]
    }
    

    method getTotal {} {
        return [expr {-1}]
    }
    

    method getId {} {
        return [my jget id]
    }
}

namespace eval ::CountedPickedUpLayerInterfaceFactory {
    variable NULL_COUNTED_PICKUP_LAYER_FACTORYValue {}
    variable NULL_COUNTED_PICKUP_LAYER_FACTORYSet 0
    proc staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY {} {
        variable NULL_COUNTED_PICKUP_LAYER_FACTORYValue
        variable NULL_COUNTED_PICKUP_LAYER_FACTORYSet
        if {!$NULL_COUNTED_PICKUP_LAYER_FACTORYSet} {
            set NULL_COUNTED_PICKUP_LAYER_FACTORYSet 1
            set NULL_COUNTED_PICKUP_LAYER_FACTORYValue [::CountedPickedUpLayerInterfaceFactory new [[::PickedUpLayerTypeFactory::getInstance] jget NONE] [::IconLayer::staticGet_NULL_ICON_LAYER] [[::NullAnimationFactory::getFactoryInstance] getInstance 0]]
        }
        return $NULL_COUNTED_PICKUP_LAYER_FACTORYValue
    }
    proc staticSet_NULL_COUNTED_PICKUP_LAYER_FACTORY {value} {
        variable NULL_COUNTED_PICKUP_LAYER_FACTORYValue
        variable NULL_COUNTED_PICKUP_LAYER_FACTORYSet
        set NULL_COUNTED_PICKUP_LAYER_FACTORYSet 1
        set NULL_COUNTED_PICKUP_LAYER_FACTORYValue $value
    }
}


