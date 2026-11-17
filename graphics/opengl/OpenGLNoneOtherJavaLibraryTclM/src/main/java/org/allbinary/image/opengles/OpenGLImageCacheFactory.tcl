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
# package org.allbinary.image.opengles

#OpenGLNoneOtherJavaLibrary
oo::class create ::OpenGLImageCacheFactory {
    superclass ::JObject
}

oo::define ::OpenGLImageCacheFactory {
    method initFields_OpenGLImageCacheFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLImageCacheFactory
    }
    
    
}

namespace eval ::OpenGLImageCacheFactory {
    variable IMAGE_CACHEValue {}
    variable IMAGE_CACHESet 0
    proc staticGet_IMAGE_CACHE {} {
        variable IMAGE_CACHEValue
        variable IMAGE_CACHESet
        if {!$IMAGE_CACHESet} {
            set IMAGE_CACHESet 1
            set IMAGE_CACHEValue [::ImageCache::staticGet_NULL_IMAGE_CACHE]
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
        return [::OpenGLImageCacheFactory::staticGet_IMAGE_CACHE]
    }
    proc init {} {
        if {[expr {[::OpenGLImageCacheFactory::staticGet_IMAGE_CACHE] eq {}}]} {
        }
    }
}


