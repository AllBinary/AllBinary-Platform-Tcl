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

oo::class create ::CacheInterface {
    superclass ::JObject
}

oo::define ::CacheInterface {
    method initFields_CacheInterface {} {
        return
    }
    

    method add {cacheableInterface} {
        error [jexception AbstractMethodError add]
    }
    

    method addArray {cacheableInterfaces} {
        error [jexception AbstractMethodError addArray]
    }
    

    method clear {} {
        error [jexception AbstractMethodError clear]
    }
}

namespace eval ::CacheInterface {
}


