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

oo::class create ::ShaderComposite {
    superclass ::JObject
}

oo::define ::ShaderComposite {
    method initFields_ShaderComposite {} {
        my jset disableProgramShaderOpenGLProcessor {}
        my jset requiresOpenGLVersion {}
        my jset shaderArray {}
        my jset shaderInitializer {}
        my jset compositeShaderUpdater {}
        my jset modelViewProjection {}
        my jset colorOpenGLProcessor {}
        my jset vertexOpenGLProcessor {}
        my jset useProgramShaderOpenGLProcessor {}
        my jset shaderMatrixOpenGLProcessor {}
        my jset colorEnableVertexAttribArrayOpenGLProcessor {}
        my jset normalEnableVertexAttribArrayOpenGLProcessor {}
        my jset vertexEnableVertexAttribArrayOpenGLProcessor {}
        my jset textureEnableVertexAttribArrayOpenGLProcessor {}
        my jset colorDisableVertexAttribArrayOpenGLProcessor {}
        my jset normalDisableVertexAttribArrayOpenGLProcessor {}
        my jset vertexDisableVertexAttribArrayOpenGLProcessor {}
        my jset textureDisableVertexAttribArrayOpenGLProcessor {}
        my jset uniformLightPositionOpenGLProcessor {}
        my jset uniformLightColorOpenGLProcessor {}
        my jset uniformCameraPositionOpenGLProcessor {}
        my jset uniformTextureUnitOpenGLProcessor {}
        my jset programHandle 0
        
        
        
        
        
        
        
        
        my jset useProgramShaderOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset shaderMatrixOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset colorEnableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset normalEnableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset vertexEnableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset textureEnableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset colorDisableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset normalDisableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset vertexDisableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset textureDisableVertexAttribArrayOpenGLProcessor [::NullOpenGLProcessorFactory::getInstance]
        my jset uniformLightPositionOpenGLProcessor [::NullOpenGLTextureProcessor::getInstance]
        my jset uniformLightColorOpenGLProcessor [::NullOpenGLTextureProcessor::getInstance]
        my jset uniformCameraPositionOpenGLProcessor [::NullOpenGLTextureProcessor::getInstance]
        my jset uniformTextureUnitOpenGLProcessor [::NullOpenGLTextureProcessor::getInstance]
        my jset programHandle 0
        return
    }
    

    constructor {requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor} {
        next
        my initFields_ShaderComposite
        my jset requiresOpenGLVersion $requiresOpenGLVersion
        my jset shaderArray $shaderArray
        my jset shaderInitializer $shaderInitializer
        my jset compositeShaderUpdater $compositeShaderUpdater
        my jset modelViewProjection $modelViewProjection
        my jset colorOpenGLProcessor $colorOpenGLProcessor
        my jset vertexOpenGLProcessor $vertexOpenGLProcessor
        my jset disableProgramShaderOpenGLProcessor $disableProgramShaderOpenGLProcessor
    }
    

    method init {gl} {
        my jset programHandle [[my jget shaderInitializer] init $gl [my jget shaderArray] [[::StringUtil::getInstance] getArrayInstance]]
    }
}

namespace eval ::ShaderComposite {
}


