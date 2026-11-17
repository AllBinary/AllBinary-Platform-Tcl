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
# package org.allbinary.media.graphics.geography.pathfinding

oo::class create ::MultipassState {
    superclass ::JObject
}

oo::define ::MultipassState {
    method initFields_MultipassState {} {
        my jset step 0
        my jset iteration 0
        my jset iteration2 0
        my jset step 0
        my jset iteration 0
        my jset iteration2 0
        return
    }

    constructor {} {
        next
        my initFields_MultipassState
    }
}

namespace eval ::MultipassState {
}


