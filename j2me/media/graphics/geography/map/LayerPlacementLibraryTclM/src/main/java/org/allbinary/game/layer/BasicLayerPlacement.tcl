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
# package org.allbinary.game.layer

oo::class create ::BasicLayerPlacement {
    superclass ::JObject
}

oo::define ::BasicLayerPlacement {
    method initFields_BasicLayerPlacement {} {
        my jset layerType {}
        my jset width 0
        my jset height 0
        
        
        
        return
    }
    

    constructor {layerType width height} {
        next
        my initFields_BasicLayerPlacement
        my jset layerType $layerType
        my jset width $width
        my jset height $height
    }
    

    method getWidth {} {
        return [my jget width]
    }
    

    method getHeight {} {
        return [my jget height]
    }
    

    method getLayerType {} {
        return [my jget layerType]
    }
    

    method setLayerType {layerType} {
        my jset layerType $layerType
    }
}

namespace eval ::BasicLayerPlacement {
}


