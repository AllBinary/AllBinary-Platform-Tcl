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
# package org.allbinary.game.layer.drop

oo::class create ::DropLayerFactory {
    superclass ::JObject
}

oo::define ::DropLayerFactory {
    method initFields_DropLayerFactory {} {
        my jset list {}
        my jset basicArrayListUtil {}
        my jset list [::BasicArrayListD new]
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_DropLayerFactory
    }
    

    method clear {} {
        [my jget list] clear
    }
    
    

    method getSize {} {
        return [[my jget list] size]
    }
    

    method getRandomInstance {} {
        return [[my jget basicArrayListUtil] getRandom [my jget list]]
    }
    

    method add {layerInterfaceFactoryInterface} {
        [my jget list] add $layerInterfaceFactoryInterface
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::DropLayerFactory {
    variable DROP_LAYER_FACTORYValue {}
    variable DROP_LAYER_FACTORYSet 0
    proc staticGet_DROP_LAYER_FACTORY {} {
        variable DROP_LAYER_FACTORYValue
        variable DROP_LAYER_FACTORYSet
        if {!$DROP_LAYER_FACTORYSet} {
            set DROP_LAYER_FACTORYSet 1
            set DROP_LAYER_FACTORYValue [::DropLayerFactory new]
        }
        return $DROP_LAYER_FACTORYValue
    }
    proc staticSet_DROP_LAYER_FACTORY {value} {
        variable DROP_LAYER_FACTORYValue
        variable DROP_LAYER_FACTORYSet
        set DROP_LAYER_FACTORYSet 1
        set DROP_LAYER_FACTORYValue $value
    }
    proc getInstance {} {
        return [::DropLayerFactory::staticGet_DROP_LAYER_FACTORY]
    }
}


