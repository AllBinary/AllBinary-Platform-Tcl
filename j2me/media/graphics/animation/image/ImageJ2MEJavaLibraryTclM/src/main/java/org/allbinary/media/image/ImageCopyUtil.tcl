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

oo::class create ::ImageCopyUtil {
    superclass ::JObject
}

oo::define ::ImageCopyUtil {
    method initFields_ImageCopyUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset imageCreationUtil {}
        my jset anchor 0
        my jset gameFeatureFactory {}
        my jset features {}
        my jset NO_COPY {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset imageCreationUtil [::ImageCreationUtil::getInstance]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset gameFeatureFactory [::GameFeatureFactory::getInstance]
        my jset features [::Features::getInstance]
        my jset NO_COPY "J2ME does not need to copy images after initial loading"
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageCopyUtil
    }
    

    method createImageForRotation {originalImage} {
        return [my createImage $originalImage]
    }
    

    method createImage {originalImage} {
        if {[expr {![[my jget features] isFeature [[my jget gameFeatureFactory] jget POST_IMAGE_LOADING_MODIFICATION]]}]} {
            [my jget logUtil] put [my jget NO_COPY] [self] [[my jget commonStrings] jget CONSTRUCTOR] [jexception Exception {}]
            return $originalImage
        }
        set image [[my jget imageCreationUtil] createImageWH [$originalImage getWidth] [$originalImage getHeight]]
        if {[$image isMutable]} {
            [$image getGraphics] drawImage $originalImage 0 0 [my jget anchor]
            return $image
        } else {
            error [jexception Exception "Not Mutable"]
        }
    }
    

    method createImageScale {originalImage canvasScale resize} {
        if {[expr {![[my jget features] isFeature [[my jget gameFeatureFactory] jget POST_IMAGE_LOADING_MODIFICATION]]}]} {
            [my jget logUtil] put [my jget NO_COPY] [self] [[my jget commonStrings] jget CONSTRUCTOR] [jexception Exception {}]
            return $originalImage
        }
        set newWidth [jint ([expr {[$originalImage getWidth] * $canvasScale}])]
        set newHeight [jint ([expr {[$originalImage getHeight] * $canvasScale}])]
        if {$resize} {
            if {[expr {$newWidth < $newHeight}]} {
                set newWidth $newHeight
            }
            if {[expr {$newHeight < $newWidth}]} {
                set newHeight $newWidth
            }
        }
        set image [[my jget imageCreationUtil] createImageWH $newWidth $newHeight]
        if {[$image isMutable]} {
            set halfWidthDelta [expr {([expr {$newWidth - [$originalImage getWidth]}]) / 2}]
            set halfHeightDelta [expr {([expr {$newHeight - [$originalImage getHeight]}]) / 2}]
            set graphics [$image getGraphics]
            $graphics drawImage $originalImage $halfWidthDelta $halfHeightDelta [my jget anchor]
            return $image
        } else {
            error [jexception Exception "Not Mutable"]
        }
    }
}

namespace eval ::ImageCopyUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageCopyUtil new]
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
        return [::ImageCopyUtil::staticGet_instance]
    }
}


