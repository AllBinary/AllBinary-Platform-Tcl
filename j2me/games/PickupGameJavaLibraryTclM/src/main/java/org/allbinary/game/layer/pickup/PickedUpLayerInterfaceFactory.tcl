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

oo::class create ::PickedUpLayerInterfaceFactory {
    superclass ::PickedUpLayerInterfaceFactoryBase
}

oo::define ::PickedUpLayerInterfaceFactory {
    method initFields_PickedUpLayerInterfaceFactory {} {
        my jset pickedUpLayerType {}
        my jset iconLayer {}
        my jset animationInterface {}
        
        
        
        return
    }
    

    constructor {pickeUpLayerType iconLayer animationInterface} {
        next
        my initFields_PickedUpLayerInterfaceFactory
        my jset pickedUpLayerType $pickeUpLayerType
        my jset animationInterface $animationInterface
        my jset iconLayer $iconLayer
    }
    

    method getIconLayer {} {
        return [my jget iconLayer]
    }
    

    method getAnimationInterface {} {
        return [my jget animationInterface]
    }
    

    method getPickedUpLayerType {} {
        return [my jget pickedUpLayerType]
    }
}

namespace eval ::PickedUpLayerInterfaceFactory {
}


