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

oo::class create ::ImageCacheFactory {
    superclass ::JObject
}

oo::define ::ImageCacheFactory {
    method initFields_ImageCacheFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ImageCacheFactory
    }
    
    
}

namespace eval ::ImageCacheFactory {
    variable IMAGE_CACHEValue {}
    variable IMAGE_CACHESet 0
    proc staticGet_IMAGE_CACHE {} {
        variable IMAGE_CACHEValue
        variable IMAGE_CACHESet
        if {!$IMAGE_CACHESet} {
            set IMAGE_CACHESet 1
            set IMAGE_CACHEValue [::ImageCache new]
        }
        return $IMAGE_CACHEValue
    }
    proc staticSet_IMAGE_CACHE {value} {
        variable IMAGE_CACHEValue
        variable IMAGE_CACHESet
        set IMAGE_CACHESet 1
        set IMAGE_CACHEValue $value
    }
    proc getInstance {} {
        return [::ImageCacheFactory::staticGet_IMAGE_CACHE]
    }
    proc init {} {
    }
}


