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

oo::class create ::AllBinaryRendererBase3 {
    superclass ::JObject
}

oo::define ::AllBinaryRendererBase3 {
    method initFields_AllBinaryRendererBase3 {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_AllBinaryRendererBase3
    }
    

    method update {gl} {
        while {[expr {[[my jget list] size] > 0}]} {
            set openGLESImage [[my jget list] removeAt 0]
            if {[expr {$openGLESImage ne {}}]} {
                $openGLESImage set $gl
            }
        }
    }
    

    method add {image} {
        [my jget list] add $image
    }
}

namespace eval ::AllBinaryRendererBase3 {
}


