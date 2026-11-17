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

oo::class create ::ImageCache {
    superclass ::ImageCacheBase
}

oo::define ::ImageCache {
    method initFields_ImageCache {} {
        my jset commonStrings {}
        my jset tsUtil {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_ImageCache
    }
    

    method addListener {renderer} {
    }
    

    method getIndex {key} {
        set gdResources [::GDResources::getInstance]
        set resourceStringArray [$gdResources jget resourceStringArray]
        set size [$resourceStringArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[$resourceStringArray get $index] eq $key}]} {
                return $index
            }
        }
        [my jget logUtil] putF [[[[::StringMaker new] append "unable to find key: "] append [[::StringUtil::getInstance] toString1 $key]] toString] [self] [[my jget commonStrings] jget RUN]
        error [jexception RuntimeException {}]
    }
    

    method get {caller width height} {
        set foundIndex [my getIndexWH $width $height]
        set image [my getFromAvailable $foundIndex $width $height]
        if {[expr {$image eq [::NullImage::staticGet_NULL_IMAGE]}]} {
            my jset volume [expr {[my jget volume] + [jint [expr {$width * $height}]]}]
            if {[expr {[my jget volume] > 32000}]} {
                [my jget tsUtil] gc
                my jset volume 0
            }
            set image [my createImage $caller $width $height]
            set widths [my jget widths]
            if {[expr {[my jget nextIndex] > [jint [expr {[$widths length] - 1}]]}]} {
                if {[expr {$foundIndex == [expr {-1}]}]} {
                    set foundIndex [my jget nextIndex]
                    $widths set [my jget nextIndex] $width
                    [my jget heights] set [my jget nextIndex] $height
                    my jpostinc nextIndex 1
                }
                [[my jget listOfList] get $foundIndex] add $image
            }
        }
        return $image
    }
    

    method getWithKey {key} {
        set image [my getImage $key]
        if {[expr {$image eq [::NullImage::staticGet_NULL_IMAGE]}]} {
            set resourceUtil [::ResourceUtil::getInstance]
            set resourceInputStream [$resourceUtil getResourceAsStream $key]
            if {[expr {$resourceInputStream eq {}}]} {
                error [jexception RuntimeException [[[[::StringMaker new] append "Image resource is not available for key: "] append [[::StringUtil::getInstance] toString1 $key]] toString]]
            }
            try {
                set image [my createImageFromInputStream $key $resourceInputStream]
            } on error {e} {
                [my jget logUtil] put "Exception: Trying Again After GC" [self] [[my jget commonStrings] jget GET] $e
                [my jget logUtil] putF [[[[::StringMaker new] append "InputStream: "] append [[::StringUtil::getInstance] toString1 $resourceInputStream]] toString] [self] [[my jget commonStrings] jget GET]
                [my jget tsUtil] gc
                [my jget tsUtil] gc
                [my jget logUtil] putF [::Memory::getInfo] [self] [[my jget commonStrings] jget GET]
                ::Thread::sleep 100
                set image [my createImageFromInputStream $key $resourceInputStream]
            }
            if {[::J2MEUtil::isHTML]} {
            } else {
                $resourceInputStream close
            }
            [my jget hashtable] put $key $image
        }
        return $image
    }
    

    method loadImageForAnimation {} {
    }
    

    method progressEnded {} {
    }
    

    method runTask {} {
    }
    

    method isLazy {} {
        return false
    }
}

namespace eval ::ImageCache {
    variable NULL_IMAGE_CACHEValue {}
    variable NULL_IMAGE_CACHESet 0
    proc staticGet_NULL_IMAGE_CACHE {} {
        variable NULL_IMAGE_CACHEValue
        variable NULL_IMAGE_CACHESet
        if {!$NULL_IMAGE_CACHESet} {
            set NULL_IMAGE_CACHESet 1
            set NULL_IMAGE_CACHEValue [::ImageCache new]
        }
        return $NULL_IMAGE_CACHEValue
    }
    proc staticSet_NULL_IMAGE_CACHE {value} {
        variable NULL_IMAGE_CACHEValue
        variable NULL_IMAGE_CACHESet
        set NULL_IMAGE_CACHESet 1
        set NULL_IMAGE_CACHEValue $value
    }
}


