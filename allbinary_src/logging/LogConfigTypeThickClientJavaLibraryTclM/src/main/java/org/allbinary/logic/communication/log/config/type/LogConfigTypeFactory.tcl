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
# package org.allbinary.logic.communication.log.config.type

oo::class create ::LogConfigTypeFactory {
    superclass ::JObject
}

oo::define ::LogConfigTypeFactory {
    method initFields_LogConfigTypeFactory {} {
        my jset NO_DESCRIPTION {}
        my jset OS {}
        my jset FACTORYERROR {}
        my jset FILE {}
        my jset FILEERROR {}
        my jset IDLOGGING {}
        my jset REPLACE {}
        my jset REPLACE_INFO {}
        my jset REPLACEERROR {}
        my jset NO_DESCRIPTION "No Description"
        my jset OS [::LogConfigType new "Operating System" [my jget NO_DESCRIPTION]]
        my jset FACTORYERROR [::LogConfigType new "Factory Error" [my jget NO_DESCRIPTION]]
        my jset FILE [::LogConfigType new "File" [my jget NO_DESCRIPTION]]
        my jset FILEERROR [::LogConfigType new "File Error" [my jget NO_DESCRIPTION]]
        my jset IDLOGGING [::LogConfigType new "ID Logging" [my jget NO_DESCRIPTION]]
        my jset REPLACE [::LogConfigType new "Replace" [my jget NO_DESCRIPTION]]
        my jset REPLACE_INFO [::LogConfigType new "Replace Info" [my jget NO_DESCRIPTION]]
        my jset REPLACEERROR [::LogConfigType new "Replace Error" [my jget NO_DESCRIPTION]]
        return
    }
    
    

    constructor {} {
        next
        my initFields_LogConfigTypeFactory
        [::LogConfigTypes::staticGet_LOGGING] add [my jget OS]
        [::LogConfigTypes::staticGet_LOGGING] add [my jget FACTORYERROR]
    }
}

namespace eval ::LogConfigTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LogConfigTypeFactory new]
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
        return [::LogConfigTypeFactory::staticGet_instance]
    }
}


