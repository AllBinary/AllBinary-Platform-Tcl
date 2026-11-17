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

oo::class create ::CachePolicy {
    superclass ::JObject
}

oo::define ::CachePolicy {
    method initFields_CachePolicy {} {
        my jset name {}
        my jset maxTime 0
        my jset maxSize 0
        
        my jset maxTime 0
        my jset maxSize 0
        return
    }
    

    constructor {name maxTime maxSize} {
        next
        my initFields_CachePolicy
        my jset name $name
        my setMaxTime $maxTime
        my setMaxSize $maxSize
    }
    

    method getMaxTime {} {
        return [my jget maxTime]
    }
    

    method setMaxTime {maxTime} {
        my jset maxTime $maxTime
    }
    

    method getMaxSize {} {
        return [my jget maxSize]
    }
    

    method setMaxSize {maxSize} {
        my jset maxSize $maxSize
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::CachePolicy {
}


