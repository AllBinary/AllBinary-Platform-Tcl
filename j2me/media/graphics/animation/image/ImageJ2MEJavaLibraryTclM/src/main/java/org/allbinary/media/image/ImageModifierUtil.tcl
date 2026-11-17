# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::ImageModifierUtil {
    superclass ::JObject
}

oo::define ::ImageModifierUtil {
    method initFields_ImageModifierUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_ImageModifierUtil
    }
    
    

    method setColor {unusedOriginalImage image imageIndex basicColor} {
    }
    

    method changeColor {unusedOriginalImage image imageIndex basicColor} {
    }
    

    method setAlpha {originalImage image imageIndex alphaInt} {
    }
    

    method getImageArray {originalImageArray} {
        return $originalImageArray
    }
    

    method handleImage {imageArray index image} {
    }
    

    method reset {} {
    }
}

namespace eval ::ImageModifierUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageModifierUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstanceOrCreate {} {
        return [::ImageModifierUtil::staticGet_instance]
    }
}


