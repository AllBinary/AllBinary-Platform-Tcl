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
# package org.allbinary.graphics

oo::class create ::RendererStateFactory {
    superclass ::JObject
}

oo::define ::RendererStateFactory {
    method initFields_RendererStateFactory {} {
        my jset loaded false
        my jset surfaceChanged false
        my jset loaded false
        my jset surfaceChanged false
        return
    }

    constructor {} {
        next
        my initFields_RendererStateFactory
    }
    
    

    method setLoaded {loaded} {
        my jset loaded $loaded
    }
    

    method isLoaded {} {
        return [my jget loaded]
    }
    

    method setSurfaceChanged {initialized} {
        my jset surfaceChanged $initialized
    }
    

    method isSurfaceChanged {} {
        return [my jget surfaceChanged]
    }
}

namespace eval ::RendererStateFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RendererStateFactory new]
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
        return [::RendererStateFactory::staticGet_instance]
    }
}


