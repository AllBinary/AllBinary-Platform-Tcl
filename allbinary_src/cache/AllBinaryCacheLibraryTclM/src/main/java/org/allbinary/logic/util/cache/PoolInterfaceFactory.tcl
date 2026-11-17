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

oo::class create ::PoolInterfaceFactory {
    superclass ::JObject
}

oo::define ::PoolInterfaceFactory {
    method initFields_PoolInterfaceFactory {} {
        return
    }
    

    constructor {} {
        next
        my initFields_PoolInterfaceFactory
    }
    
}

namespace eval ::PoolInterfaceFactory {
    proc getInstance {cacheableInterfaceFactoryInterface poolType cachePolicy} {
        error [jexception Exception [string cat "No Such PoolType: " [$poolType toString]]]
    }
}


