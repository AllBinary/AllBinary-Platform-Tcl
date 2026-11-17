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
# package org.allbinary.game.configuration.feature

oo::class create ::GraphicsFeatureFactory {
    superclass ::JObject
}

oo::define ::GraphicsFeatureFactory {
    method initFields_GraphicsFeatureFactory {} {
        my jset NONE {}
        my jset TRANSPARENT_IMAGE_CREATION {}
        my jset IMAGE_GRAPHICS {}
        my jset IMAGE_ROTATION_ON_THE_FLY {}
        my jset IMAGE_TO_ARRAY_GRAPHICS {}
        my jset SPRITE_QUARTER_ROTATION_GRAPHICS {}
        my jset SPRITE_FULL_GRAPHICS {}
        my jset VECTOR_GRAPHICS {}
        my jset VECTOR_TO_IMAGE_GRAPHICS {}
        my jset NONE [::GraphicsFeature new [[::StringUtil::getInstance] jget NULL_STRING]]
        my jset TRANSPARENT_IMAGE_CREATION [::GraphicsFeature new "Transparent Image Creation"]
        my jset IMAGE_GRAPHICS [::GraphicsFeature new "Image Graphics"]
        my jset IMAGE_ROTATION_ON_THE_FLY [::GraphicsFeature new "Image Rotated On The Fly"]
        my jset IMAGE_TO_ARRAY_GRAPHICS [::GraphicsFeature new "Image To Array Graphics"]
        my jset SPRITE_QUARTER_ROTATION_GRAPHICS [::GraphicsFeature new "Sprite Quarter Rotation Graphics"]
        my jset SPRITE_FULL_GRAPHICS [::GraphicsFeature new "Sprite Full Rotation Graphics"]
        my jset VECTOR_GRAPHICS [::GraphicsFeature new "BasicArrayList Graphics"]
        my jset VECTOR_TO_IMAGE_GRAPHICS [::GraphicsFeature new "BasicArrayList To Image Graphics"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GraphicsFeatureFactory
    }
}

namespace eval ::GraphicsFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GraphicsFeatureFactory new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::GraphicsFeatureFactory::staticGet_instance]
    }
}


