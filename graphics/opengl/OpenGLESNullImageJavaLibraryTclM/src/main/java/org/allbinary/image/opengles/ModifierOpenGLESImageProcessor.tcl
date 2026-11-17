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
# package org.allbinary.image.opengles

oo::class create ::ModifierOpenGLESImageProcessor {
    superclass ::OpenGLESImageProcessor
}

oo::define ::ModifierOpenGLESImageProcessor {
    method initFields_ModifierOpenGLESImageProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_ModifierOpenGLESImageProcessor
    }
    
}

namespace eval ::ModifierOpenGLESImageProcessor {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::ModifierOpenGLESImageProcessor new]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::ModifierOpenGLESImageProcessor::staticGet_instanceC]
    }
}


