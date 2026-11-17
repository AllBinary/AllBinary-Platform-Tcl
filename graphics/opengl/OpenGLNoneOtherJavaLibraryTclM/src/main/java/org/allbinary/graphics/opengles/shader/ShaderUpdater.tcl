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

oo::class create ::ShaderUpdater {
    superclass ::JObject
}

oo::define ::ShaderUpdater {
    method initFields_ShaderUpdater {} {
        my jset commonStrings {}
        my jset rendererStrings {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset rendererStrings [::RendererStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_ShaderUpdater
    }
    
    

    method onSurfaceCreated {gl eglConfig} {
    }
}

namespace eval ::ShaderUpdater {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ShaderUpdater new]
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
        return [::ShaderUpdater::staticGet_instance]
    }
}


