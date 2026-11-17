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
# package org.allbinary.logic.communication.log.config.type

oo::class create ::LogConfigType {
    superclass ::JObject
}

oo::define ::LogConfigType {
    method initFields_LogConfigType {} {
        my jset name {}
        my jset description {}
        
        
        return
    }
    

    constructor {name description} {
        next
        my initFields_LogConfigType
        my jset name $name
        my jset description $description
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getDescription {} {
        return [my jget description]
    }
    

    method setName {value} {
        my jset name $value
    }
    

    method setDescription {value} {
        my jset description $value
    }
}

namespace eval ::LogConfigType {
}


