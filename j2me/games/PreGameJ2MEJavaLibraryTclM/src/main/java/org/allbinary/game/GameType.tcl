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
# package org.allbinary.game

oo::class create ::GameType {
    superclass ::JObject
}

oo::define ::GameType {
    method initFields_GameType {} {
        my jset name {}
        
        return
    }
    

    constructor {name} {
        next
        my initFields_GameType
        my jset name $name
    }
    

    method toString {} {
        return [my jget name]
    }
}

namespace eval ::GameType {
}


