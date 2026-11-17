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

oo::class create ::PlatformShaderComposite {
    superclass ::ShaderComposite
}

oo::define ::PlatformShaderComposite {
    method initFields_PlatformShaderComposite {} {
        return
    }
    

    constructor {requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor} {
        next $requiresOpenGLVersion $shaderArray $compositeShaderUpdater $shaderInitializer $modelViewProjection $colorOpenGLProcessor $vertexOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my initFields_PlatformShaderComposite
    }
}

namespace eval ::PlatformShaderComposite {
}


