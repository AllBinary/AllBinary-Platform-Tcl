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
# package org.allbinary.logic.util.cache

oo::class create ::ImageCacheable {
    superclass ::JObject
}

oo::define ::ImageCacheable {
    method initFields_ImageCacheable {} {
        my jset name {}
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {name anyType} {
        next
        my initFields_ImageCacheable
    }
    

    method getKey {} {
        return [my jget name]
    }
    

    method toString {} {
        return [my jget name]
    }
}

namespace eval ::ImageCacheable {
}


