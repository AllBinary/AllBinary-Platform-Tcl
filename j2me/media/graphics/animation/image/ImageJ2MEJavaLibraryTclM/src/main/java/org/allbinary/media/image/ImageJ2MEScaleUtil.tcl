#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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

oo::class create ::ImageJ2MEScaleUtil {
    superclass ::JObject
}

oo::define ::ImageJ2MEScaleUtil {
    method initFields_ImageJ2MEScaleUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageJ2MEScaleUtil
    }
    

    method scaleArray {images width height} {
        set scaledImages [jarray [$images length] {}]
        for {set index [$images length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            $scaledImages set $index [my scale [$images get $index] $width $height]
        }
        return $scaledImages
    }
    

    method scale {image width height} {
        set sourceWidth [$image getWidth]
        set sourceHeight [$image getHeight]
        set originalData [jarray [expr {[$image getWidth] * [$image getHeight]}] 0]
        $image getRGB $originalData 0 [$image getWidth] 0 0 [$image getWidth] [$image getHeight]
        set scaledData [jarray [jint [expr {$width * $height}]] 0]
        set heightRatioFactor [jdiv ([jint [expr {8 * $sourceHeight}]]) $height]
        set widthRatioFactor [jdiv ([jint [expr {8 * $sourceWidth}]]) $width]
        set scaledIndex [jint [expr {[$scaledData length] - 1}]]
        set dx 0
        set dy 0
        for {set index $height} {[expr {[jpreincr index -1] >= 0}]} {} {
            set dy [expr {([jint [expr {$index * $heightRatioFactor}]]) >> 3}]
            for {set index2 $width} {[expr {[jpreincr index2 -1] >= 0}]} {} {
                set dx [expr {([jint [expr {$index2 * $widthRatioFactor}]]) >> 3}]
                $scaledData set [jpostincr scaledIndex -1] [$originalData get [jint [expr {([jint [expr {$sourceWidth * $dy}]]) + $dx}]]]
            }
        }
        set scaledImage [::Image::createRGBImage $scaledData $width $height true]
        return $scaledImage
    }
}

namespace eval ::ImageJ2MEScaleUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageJ2MEScaleUtil new]
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
        return [::ImageJ2MEScaleUtil::staticGet_instance]
    }
}


