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
# package org.allbinary.graphics.threed

oo::class create ::GLHolder {
    superclass ::JObject
}

oo::define ::GLHolder {
    method initFields_GLHolder {} {
        my jset isCreated false
        my jset isCreated true
        return
    }
    

    constructor {} {
        next
        my initFields_GLHolder
    }
    

    method runOnSurfaceCreated {renderer} {
    }
    

    method runOnSurfaceChanged {renderer width height} {
    }
    

    method run {renderer} {
    }
}

namespace eval ::GLHolder {
}


