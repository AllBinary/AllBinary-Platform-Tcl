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
# package org.allbinary.media.image

oo::class create ::ImageToRotationImageArrayUtil {
    superclass ::JObject
}

oo::define ::ImageToRotationImageArrayUtil {
    method initFields_ImageToRotationImageArrayUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageToRotationImageArrayUtil
    }
    

    method generate {image angleIncrement totalAngle} {
        set imageRotationUtil [::ImageRotationUtil::getInstance]
        set totalFrames [jdiv $totalAngle $angleIncrement]
        set imageArray [jarray $totalFrames {}]
        $imageArray set 0 $image
        for {set index 1} {[expr {$index < $totalFrames}]} {jpostincr index 1} {
            $imageArray set $index [$imageRotationUtil createRotatedImage $image [jint [expr {$index * $angleIncrement}]]]
        }
        return $imageArray
    }
}

namespace eval ::ImageToRotationImageArrayUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageToRotationImageArrayUtil new]
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
        return [::ImageToRotationImageArrayUtil::staticGet_instance]
    }
}


