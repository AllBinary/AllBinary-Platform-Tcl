# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

oo::class create ::PoolType {
    superclass ::JObject
}

oo::define ::PoolType {
    method initFields_PoolType {} {
        my jset cacheType {}
        
        return
    }
    

    constructor {cacheType} {
        next
        my initFields_PoolType
        my jset cacheType $cacheType
    }
    

    method getCacheType {} {
        return [my jget cacheType]
    }
    

    method toString {} {
        set POOL_TYPE "PoolType: "
        return [string cat $POOL_TYPE [[my getCacheType] toString]]
    }
}

namespace eval ::PoolType {
}


