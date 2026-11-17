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

oo::class create ::ShaderInitializer {
    superclass ::JObject
}

oo::define ::ShaderInitializer {
    method initFields_ShaderInitializer {} {
        my jset commonStrings {}
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_ShaderInitializer
    }
    
    

    method init {gl shader attributeArray} {
        return [expr {-1}]
    }
}

namespace eval ::ShaderInitializer {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ShaderInitializer new]
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
        return [::ShaderInitializer::staticGet_instance]
    }
}


