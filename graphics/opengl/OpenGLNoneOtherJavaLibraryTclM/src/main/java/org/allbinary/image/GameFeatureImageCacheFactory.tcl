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

oo::class create ::GameFeatureImageCacheFactory {
    superclass ::JObject
}

oo::define ::GameFeatureImageCacheFactory {
    method initFields_GameFeatureImageCacheFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_GameFeatureImageCacheFactory
    }
    
    
    
}

namespace eval ::GameFeatureImageCacheFactory {
    proc getInstance {} {
        return [::ImageCacheFactory::getInstance]
    }
    proc init {} {
        ::ImageCacheFactory::init
    }
    proc releaseAll {} {
        [::ImageCacheFactory::getInstance] releaseAll
    }
}


