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
# package org.allbinary.image.opengles

oo::class create ::OpenGLESImageTranslate {
    superclass ::JObject
}

oo::define ::OpenGLESImageTranslate {
    method initFields_OpenGLESImageTranslate {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESImageTranslate
    }
    
    

    method translate {gl openGLESImage x y} {
    }
    

    method translate2 {gl openGLESImage} {
    }
}

namespace eval ::OpenGLESImageTranslate {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLESImageTranslate new]
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
        return [::OpenGLESImageTranslate::staticGet_instance]
    }
}


