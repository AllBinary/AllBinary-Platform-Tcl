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
# package org.allbinary.game.ag.layer.pickup.points

oo::class create ::PointsLayerCircularStaticPool {
    superclass ::AllBinaryLayerCircularPool
}

oo::define ::PointsLayerCircularStaticPool {
    method initFields_PointsLayerCircularStaticPool {} {
        return
    }
    

    constructor {allbinaryLayerFactoryInterface total} {
        next
        my initFields_PointsLayerCircularStaticPool
        next $allbinaryLayerFactoryInterface $total
    }
    

    method visit {sourceLayerInterface} {
        set pointsLayer [my getNextInstance]
        set scoreableInterface $sourceLayerInterface
        $pointsLayer visit $scoreableInterface
    }
}

namespace eval ::PointsLayerCircularStaticPool {
}


