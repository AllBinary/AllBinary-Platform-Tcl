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
# package org.allbinary.game.ag.layer.pickup

oo::class create ::FallingPickupLayer {
    superclass ::PickupLayer
}

oo::define ::FallingPickupLayer {
    method initFields_FallingPickupLayer {} {
        return
    }
    

    constructor {remoteInfo} {
        next [::FallingPickupLayer::staticGet_NAME] $remoteInfo 0 [::CountedPickedUpLayerInterfaceFactory::staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY] [[::NullAnimationFactory::getFactoryInstance] getInstance 0] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 0 0] [::ViewPosition::getInstanceD]
        my initFields_FallingPickupLayer
    }
    

    method processTick {allBinaryLayerManager} {
        my setPosition [my jget x] [expr {[my jget y] + 1}] [my jget z]
    }
    

    method implmentsTickableInterface {} {
        return true
    }
}

namespace eval ::FallingPickupLayer {
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "FallingPickupLayer"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
}


