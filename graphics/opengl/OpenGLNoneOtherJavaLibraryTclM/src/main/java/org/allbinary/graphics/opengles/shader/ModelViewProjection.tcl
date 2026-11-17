# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.opengles.shader

oo::class create ::ModelViewProjection {
    superclass ::JObject
}

oo::define ::ModelViewProjection {
    method initFields_ModelViewProjection {} {
        return
    }

    constructor {} {
        next
        my initFields_ModelViewProjection
    }
    
    

    method get {} {
        return [[::NullUtil::getInstance] jget NULL_FLOAT_ARRAY]
    }
}

namespace eval ::ModelViewProjection {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ModelViewProjection new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::ModelViewProjection::staticGet_instance]
    }
}


