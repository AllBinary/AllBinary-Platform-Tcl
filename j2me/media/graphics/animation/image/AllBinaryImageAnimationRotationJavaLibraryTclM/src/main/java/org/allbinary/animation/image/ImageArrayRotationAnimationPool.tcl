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
# package org.allbinary.animation.image

oo::class create ::ImageArrayRotationAnimationPool {
    superclass ::BasicArrayListResetablePool
}

oo::define ::ImageArrayRotationAnimationPool {
    method initFields_ImageArrayRotationAnimationPool {} {
        return
    }
    

    constructor {cacheableInterfaceFactoryInterface} {
        next $cacheableInterfaceFactoryInterface
        my initFields_ImageArrayRotationAnimationPool
    }
    
    

    method remove {key} {
        set cacheableInterface [next $key]
        set allBinaryImageRotationAnimationInfo $key
        set imageArrayRotationAnimationCacheable ($cacheableInterface)
        $imageArrayRotationAnimationCacheable setImageArray [$allBinaryImageRotationAnimationInfo getImageArray]
        return $cacheableInterface
    }
}

namespace eval ::ImageArrayRotationAnimationPool {
    variable IMAGE_ROTATION_ANIMATION_POOLValue {}
    variable IMAGE_ROTATION_ANIMATION_POOLSet 0
    proc staticGet_IMAGE_ROTATION_ANIMATION_POOL {} {
        variable IMAGE_ROTATION_ANIMATION_POOLValue
        variable IMAGE_ROTATION_ANIMATION_POOLSet
        if {!$IMAGE_ROTATION_ANIMATION_POOLSet} {
            set IMAGE_ROTATION_ANIMATION_POOLSet 1
            set IMAGE_ROTATION_ANIMATION_POOLValue [::ImageArrayRotationAnimationPool new [::ImageArrayRotationAnimationCacheableInterfaceFactory new]]
        }
        return $IMAGE_ROTATION_ANIMATION_POOLValue
    }
    proc staticSet_IMAGE_ROTATION_ANIMATION_POOL {value} {
        variable IMAGE_ROTATION_ANIMATION_POOLValue
        variable IMAGE_ROTATION_ANIMATION_POOLSet
        set IMAGE_ROTATION_ANIMATION_POOLSet 1
        set IMAGE_ROTATION_ANIMATION_POOLValue $value
    }
    proc getInstance {} {
        return [::ImageArrayRotationAnimationPool::staticGet_IMAGE_ROTATION_ANIMATION_POOL]
    }
}


