# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.opengles.renderer

oo::class create ::RendererStrings {
    superclass ::JObject
}

oo::define ::RendererStrings {
    method initFields_RendererStrings {} {
        my jset ON_SURFACE_CREATED {}
        my jset ON_SURFACE_CHANGED {}
        my jset ON_DRAW_FRAME {}
        my jset ON_DRAW_FRAME_THREED {}
        my jset ON_DRAW_FRAME_2D {}
        my jset ON_SURFACE_CREATED "onSurfaceCreated"
        my jset ON_SURFACE_CHANGED "onSurfaceChanged"
        my jset ON_DRAW_FRAME "onDrawFrame"
        my jset ON_DRAW_FRAME_THREED "onDrawFrameThreed"
        my jset ON_DRAW_FRAME_2D "onDrawFrame2d"
        return
    }

    constructor {} {
        next
        my initFields_RendererStrings
    }
    
}

namespace eval ::RendererStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RendererStrings new]
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
        return [::RendererStrings::staticGet_instance]
    }
}


