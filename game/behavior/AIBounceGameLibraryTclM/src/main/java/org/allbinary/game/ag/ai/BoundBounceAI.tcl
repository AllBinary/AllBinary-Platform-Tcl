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
# package org.allbinary.game.ag.ai

oo::class create ::BoundBounceAI {
    superclass ::BasicAI
}

oo::define ::BoundBounceAI {
    method initFields_BoundBounceAI {} {
        my jset currentRelativeAngle 0
        my jset layerBounds {}
        my jset boundsVisitorInterface {}
        my jset currentRelativeAngle 0
        
        
        return
    }
    

    constructor {ownerLayerInterface gameInput layerBounds boundsVisitorInterface} {
        next $ownerLayerInterface $gameInput
        my initFields_BoundBounceAI
        my jset layerBounds $layerBounds
        my jset boundsVisitorInterface $boundsVisitorInterface
    }
    

    method paint {graphics} {
        set rectange [[my jget layerBounds] getRectangleP]
        $graphics drawRect [[$rectange getPoint] getX] [[$rectange getPoint] getY] [$rectange getWidth] [$rectange getHeight]
    }
    

    method processAI {allBinaryLayerManager} {
        [my jget layerBounds] visit [my jget boundsVisitorInterface]
    }
}

namespace eval ::BoundBounceAI {
}


