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

oo::class create ::ShaderManager {
    superclass ::JObject
}

oo::define ::ShaderManager {
    method initFields_ShaderManager {} {
        my jset LOAD_SHADER {}
        my jset commonStrings {}
        my jset GL_VERTEX_SHADER 0
        my jset GL_FRAGMENT_SHADER 0
        my jset LOAD_SHADER "loadShader"
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        return
    }
    
    

    constructor {GL_VERTEX_SHADER GL_FRAGMENT_SHADER} {
        next
        my initFields_ShaderManager
        my jset GL_VERTEX_SHADER $GL_VERTEX_SHADER
        my jset GL_FRAGMENT_SHADER $GL_FRAGMENT_SHADER
    }
    

    method load {gl resource shaderAsStringArray shaderType} {
        return [expr {-1}]
    }
    

    method loadShader {gl resource stringList shaderType} {
        return [expr {-1}]
    }
}

namespace eval ::ShaderManager {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ShaderManager new [expr {-1}] [expr {-1}]]
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
        return [::ShaderManager::staticGet_instance]
    }
}


