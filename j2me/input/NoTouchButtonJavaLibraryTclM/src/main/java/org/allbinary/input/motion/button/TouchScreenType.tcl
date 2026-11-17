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
# package org.allbinary.input.motion.button

oo::class create ::TouchScreenType {
    superclass ::JObject
}

oo::define ::TouchScreenType {
    method initFields_TouchScreenType {} {
        my jset name {}
        
        return
    }
    

    constructor {name} {
        next
        my initFields_TouchScreenType
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method toString {} {
        return [my getName]
    }
}

namespace eval ::TouchScreenType {
}


