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

oo::class create ::ImageRotationUtil {
    superclass ::JObject
}

oo::define ::ImageRotationUtil {
    method initFields_ImageRotationUtil {} {
        my jset anchor 0
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageRotationUtil
    }
    

    method createRotatedImage {originalImage rotationInDegrees} {
        return $originalImage
    }
}

namespace eval ::ImageRotationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageRotationUtil new]
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
        return [::ImageRotationUtil::staticGet_instance]
    }
}


