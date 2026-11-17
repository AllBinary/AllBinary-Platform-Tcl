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
# package org.allbinary.logic.java

oo::class create ::FileExtensionData {
    superclass ::JObject
}

oo::define ::FileExtensionData {
    method initFields_FileExtensionData {} {
        my jset DOT_JAVA_SOURCE {}
        my jset JAVA_SOURCE {}
        my jset DOT_JAVA_SOURCE ".java"
        my jset JAVA_SOURCE "java"
        return
    }
    
    

    constructor {} {
        next
        my initFields_FileExtensionData
    }
}

namespace eval ::FileExtensionData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FileExtensionData new]
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
        return [::FileExtensionData::staticGet_instance]
    }
}


