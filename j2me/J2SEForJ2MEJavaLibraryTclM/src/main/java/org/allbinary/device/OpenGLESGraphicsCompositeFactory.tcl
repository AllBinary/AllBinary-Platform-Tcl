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
# package org.allbinary.device

oo::class create ::OpenGLESGraphicsCompositeFactory {
    superclass ::JObject
}

oo::define ::OpenGLESGraphicsCompositeFactory {
    method initFields_OpenGLESGraphicsCompositeFactory {} {
        my jset openGLESGraphicsFactory {}
        my jset openGLESGraphicsFactory [::OpenGLESGraphicsFactory new]
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESGraphicsCompositeFactory
    }
    
    

    method set {openGLESGraphicsFactory} {
        my jset openGLESGraphicsFactory $openGLESGraphicsFactory
    }
    

    method get {} {
        return [my jget openGLESGraphicsFactory]
    }
}

namespace eval ::OpenGLESGraphicsCompositeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLESGraphicsCompositeFactory new]
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
        return [::OpenGLESGraphicsCompositeFactory::staticGet_instance]
    }
}


