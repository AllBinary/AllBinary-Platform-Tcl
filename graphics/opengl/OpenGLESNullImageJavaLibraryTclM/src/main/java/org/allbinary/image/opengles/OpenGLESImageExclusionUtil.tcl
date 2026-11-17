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

oo::class create ::OpenGLESImageExclusionUtil {
    superclass ::JObject
}

oo::define ::OpenGLESImageExclusionUtil {
    method initFields_OpenGLESImageExclusionUtil {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESImageExclusionUtil
    }
    
    

    method isCustomScaling {image} {
        return false
    }
}

namespace eval ::OpenGLESImageExclusionUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLESImageExclusionUtil new]
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
        return [::OpenGLESImageExclusionUtil::staticGet_instance]
    }
}


