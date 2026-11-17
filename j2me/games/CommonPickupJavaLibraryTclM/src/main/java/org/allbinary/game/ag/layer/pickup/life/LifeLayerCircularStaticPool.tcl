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
# package org.allbinary.game.ag.layer.pickup.life

oo::class create ::LifeLayerCircularStaticPool {
    superclass ::AllBinaryLayerCircularPool
}

oo::define ::LifeLayerCircularStaticPool {
    method initFields_LifeLayerCircularStaticPool {} {
        return
    }
    

    constructor {allbinaryLayerFactoryInterface total} {
        next
        my initFields_LifeLayerCircularStaticPool
        next $allbinaryLayerFactoryInterface $total
    }
    

    method visit {sourceLayerInterface} {
        set lifeLayer [my getNextInstance]
        set lifeInterfaceCompositeInterface $sourceLayerInterface
        set lifeInterface [$lifeInterfaceCompositeInterface getLifeInterface]
        $lifeLayer visit $lifeInterface
    }
}

namespace eval ::LifeLayerCircularStaticPool {
}


