#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.game.resource

oo::class create ::ResourceLoadingLevel {
    superclass ::JObject
}

oo::define ::ResourceLoadingLevel {
    method initFields_ResourceLoadingLevel {} {
        my jset name {}
        my jset level 0
        
        
        return
    }
    

    constructor {name level} {
        next
        my initFields_ResourceLoadingLevel
        my jset name $name
        my jset level $level
    }
    

    method getLevel {} {
        return [my jget level]
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::ResourceLoadingLevel {
}


