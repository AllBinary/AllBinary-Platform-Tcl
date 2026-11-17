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
# package org.allbinary.game.ag.layer.pickup.health

oo::class create ::HealLayerCircularStaticPool {
    superclass ::AllBinaryLayerCircularPool
}

oo::define ::HealLayerCircularStaticPool {
    method initFields_HealLayerCircularStaticPool {} {
        return
    }
    

    constructor {allbinaryLayerFactoryInterface total} {
        next
        my initFields_HealLayerCircularStaticPool
        next $allbinaryLayerFactoryInterface $total
    }
    

    method visit {sourceLayerInterface} {
        set healLayer [my getNextInstance]
        set healthInterfaceCompositeInterface $sourceLayerInterface
        set healthInterface [$healthInterfaceCompositeInterface getHealthInterface]
        $healLayer visit $healthInterface
    }
}

namespace eval ::HealLayerCircularStaticPool {
}


