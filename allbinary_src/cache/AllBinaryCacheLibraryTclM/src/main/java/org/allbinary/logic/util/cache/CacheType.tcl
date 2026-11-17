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

oo::class create ::CacheType {
    superclass ::JObject
}

oo::define ::CacheType {
    method initFields_CacheType {} {
        my jset vendor {}
        my jset type {}
        
        
        return
    }
    

    constructor {vendor type} {
        next
        my initFields_CacheType
        my jset vendor $vendor
        my jset type $type
    }
    

    method getVendor {} {
        return [my jget vendor]
    }
    

    method getType {} {
        return [my jget type]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "CacheType: Vendor: "
        $stringBuffer append [my getVendor]
        $stringBuffer append " Type: "
        $stringBuffer append [my getType]
        return [$stringBuffer toString]
    }
}

namespace eval ::CacheType {
}


