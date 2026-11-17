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

oo::class create ::ImageCacheBase {
    superclass ::JObject
}

oo::define ::ImageCacheBase {
    method initFields_ImageCacheBase {} {
        my jset logUtil {}
        my jset imageFactory {}
        my jset hashtable {}
        my jset SIZE 0
        my jset widths {}
        my jset heights {}
        my jset listOfList {}
        my jset availableListOfList {}
        my jset volume 0
        my jset nextIndex 0
        my jset logUtil [::LogUtil::getInstance]
        my jset imageFactory [::ImageFactory::getInstance]
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        my jset SIZE 128
        my jset widths [jarray [my jget SIZE] 0]
        my jset heights [jarray [my jget SIZE] 0]
        my jset listOfList [jarray [my jget SIZE] {}]
        my jset availableListOfList [jarray [my jget SIZE] {}]
        my jset volume 0
        my jset nextIndex 0
        return
    }
    

    constructor {} {
        next
        my initFields_ImageCacheBase
        for {set index [jint [expr {[[my jget listOfList] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget listOfList] set $index [::BasicArrayListD new]
        }
        for {set index [jint [expr {[[my jget availableListOfList] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget availableListOfList] set $index [::BasicArrayListD new]
        }
    }
    

    method getImage {resourceId} {
        set imageCanBeNull [[my jget hashtable] get $resourceId]
        if {[expr {$imageCanBeNull eq {}}]} {
            return [::NullImage::staticGet_NULL_IMAGE]
        }
        return $imageCanBeNull
    }
    

    method releaseAll {} {
        for {set index [jint [expr {[[my jget listOfList] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[my jget availableListOfList] get $index] clear
            [[my jget availableListOfList] get $index] addAllList [[my jget listOfList] get $index]
        }
        [my jget logUtil] putF [[[[::StringMaker new] append "ImageCache: "] append [my toString]] toString] [self] "releaseAll"
    }
    

    method getIndexWH {width height} {
        set foundIndex [expr {-1}]
        set size [[my jget widths] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[expr {[[my jget widths] get $index] == $width}] && [expr {[[my jget heights] get $index] == $height}]}]} {
                set foundIndex $index
                return $foundIndex
            }
        }
        return $foundIndex
    }
    

    method getFromAvailable {foundIndex width height} {
        if {[expr {$foundIndex != [expr {-1}]}]} {
            if {[expr {[[[my jget availableListOfList] get $foundIndex] size] > 0}]} {
                set list [[my jget availableListOfList] get $foundIndex]
                return [$list removeAt [jint [expr {[$list size] - 1}]]]
            }
        }
        return [::NullImage::staticGet_NULL_IMAGE]
    }
    

    method get {caller width height} {
        error [jexception RuntimeException {}]
    }
    

    method getWithKey {key} {
        error [jexception RuntimeException {}]
    }
    

    method createImage {caller width height} {
        return [[my jget imageFactory] createImage $caller $width $height]
    }
    

    method createImageFromInputStream {key inputStream} {
        return [[my jget imageFactory] createImageFromInputStream $key $inputStream]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        for {set index [jint [expr {[my jget nextIndex] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set width [[my jget widths] get $index]
            set height [[my jget heights] get $index]
            set total [[[my jget listOfList] get $index] size]
            set totalAvailable [[[my jget availableListOfList] get $index] size]
            $stringBuffer append " w: "
            $stringBuffer appendint $width
            $stringBuffer append " h: "
            $stringBuffer appendint $height
            $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
            $stringBuffer append [[::CommonLabels::getInstance] jget TOTAL_LABEL]
            $stringBuffer appendint $total
            $stringBuffer append " available: "
            $stringBuffer appendint $totalAvailable
        }
        return [$stringBuffer toString]
    }
    

    method getHashtableP {} {
        return [my jget hashtable]
    }
    

    method init {image} {
    }
    

    method initProgress {} {
    }
}

namespace eval ::ImageCacheBase {
}


