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

oo::class create ::Shader {
    superclass ::JObject
}

oo::define ::Shader {
    method initFields_Shader {} {
        my jset shaderName {}
        my jset shaderStringList {}
        my jset shaderAsString {}
        my jset shaderHandle 0
        my jset shaderName [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset shaderStringList [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        my jset shaderAsString [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset shaderHandle 0
        return
    }

    constructor {} {
        next
        my initFields_Shader
    }
}

namespace eval ::Shader {
}


