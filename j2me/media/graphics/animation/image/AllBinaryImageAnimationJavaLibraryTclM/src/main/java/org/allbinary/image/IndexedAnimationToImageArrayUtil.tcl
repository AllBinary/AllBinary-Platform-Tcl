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
# package org.allbinary.image

oo::class create ::IndexedAnimationToImageArrayUtil {
    superclass ::JObject
}

oo::define ::IndexedAnimationToImageArrayUtil {
    method initFields_IndexedAnimationToImageArrayUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_IndexedAnimationToImageArrayUtil
    }
    
}

namespace eval ::IndexedAnimationToImageArrayUtil {
    proc getInstance {width height sequentialAnimationInterface} {
        set size [$sequentialAnimationInterface getAnimationSize]
        set imageArray [jarray $size {}]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $sequentialAnimationInterface setFrame $index
            $imageArray set $index [[::AnimationFrameToImageUtil::getInstance] getInstanceWH $width $height $sequentialAnimationInterface]
        }
        return $imageArray
    }
}


