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
# package org.allbinary.game.ag.layer.weapon.mine

oo::class create ::MineLayerFactory {
    superclass ::JObject
}

oo::define ::MineLayerFactory {
    method initFields_MineLayerFactory {} {
        my jset viewPositionFactoryInterface {}
        
        return
    }
    

    constructor {viewPositionFactoryInterface} {
        next
        my initFields_MineLayerFactory
        my jset viewPositionFactoryInterface $viewPositionFactoryInterface
    }
    

    method getInstance {} {
        return [::MineLayer new [[my jget viewPositionFactoryInterface] getInstance]]
    }
}

namespace eval ::MineLayerFactory {
}


