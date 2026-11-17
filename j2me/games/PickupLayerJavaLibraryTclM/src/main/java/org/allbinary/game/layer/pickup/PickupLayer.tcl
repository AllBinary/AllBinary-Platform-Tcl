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

oo::class create ::PickupLayer {
    superclass ::MultiPlayerGameLayer
}

oo::define ::PickupLayer {
    method initFields_PickupLayer {} {
        my jset pickedUpLayerInterfaceFactoryInterface {}
        my jset destroyed false
        my jset animationInterface {}
        my jset pickedUpLayerInterfaceFactoryInterface [::CountedPickedUpLayerInterfaceFactory::staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY]
        my jset destroyed false
        my jset animationInterface [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        return
    }
    

    constructor {name remoteInfo total pickedUpLayerInterfaceFactoryInterface animationInterface rectangle viewPosition} {
        next $remoteInfo [[::BasicGroupFactory::getInstance] jget NONE_ARRAY] $name $rectangle $viewPosition
        my initFields_PickupLayer
        my setCollidableInferface [[::CollidableAlwaysPickupNeverCollideBehaviorFactory::getInstance] createBehavior]
        my setLayerWidth 10
        my setLayerHeight 10
        my init $pickedUpLayerInterfaceFactoryInterface $animationInterface
    }
    

    method init {pickedUpLayerInterfaceFactoryInterface animationInterface} {
        my jset pickedUpLayerInterfaceFactoryInterface $pickedUpLayerInterfaceFactoryInterface
        my jset animationInterface $animationInterface
        my setDestroyed false
    }
    

    method initXYZ {x y z} {
        my setPosition $x $y $z
    }
    

    method paint {graphics} {
        set viewPosition [my getViewPosition]
        set viewX [$viewPosition getX]
        set viewY [$viewPosition getY]
        [my jget animationInterface] paintXY $graphics $viewX $viewY
    }
    

    method paintThreed {graphics} {
        set viewPosition [my getViewPosition]
        set viewX [$viewPosition getX]
        set viewY [$viewPosition getY]
        [my jget animationInterface] paintThreedXYZ $graphics $viewX $viewY 3
    }
    

    method getPickedUpLayerInterfaceFactoryInterface {} {
        return [my jget pickedUpLayerInterfaceFactoryInterface]
    }
    

    method setPickedUp {} {
        my setDestroyed true
    }
    

    method isDestroyed {} {
        return [my jget destroyed]
    }
    

    method setDestroyed {destroyed} {
        my jset destroyed $destroyed
        if {[my isDestroyed]} {
            [::DestroyedLayerProcessor::getInstance] add [self]
        }
    }
    

    method damage {damage damageType} {
    }
    

    method getDamage {damageType} {
        return 0
    }
    

    method set {gl} {
        set openGLSurfaceChangedInterface [my jget animationInterface]
        $openGLSurfaceChangedInterface set $gl
    }
}

namespace eval ::PickupLayer {
}


