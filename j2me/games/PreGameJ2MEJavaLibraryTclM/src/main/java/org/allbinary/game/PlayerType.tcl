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

oo::class create ::PlayerType {
    superclass ::JObject
}

oo::define ::PlayerType {
    method initFields_PlayerType {} {
        my jset id 0
        my jset name {}
        
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {name value} {
        next
        my initFields_PlayerType
        my jset name $name
        my jset id $value
    }
    

    method getId {} {
        return [my jget id]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method toString {} {
        return [my getName]
    }
}

namespace eval ::PlayerType {
}


