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
# package org.allbinary.logic.java.exception

#ActualPlatform
oo::class create ::ExceptionUtil {
    superclass ::JObject
}

oo::define ::ExceptionUtil {
    method initFields_ExceptionUtil {} {
        my jset PRETEND_EXCEPTION {}
        my jset NONE {}
        my jset PRETEND_EXCEPTION [jexception Exception "Not Really An Exception"]
        my jset NONE "No Stack Trace"
        return
    }
    
    

    constructor {} {
        next
        my initFields_ExceptionUtil
    }
    

    method getStackTrace {e} {
        set bs [::ByteArrayOutputStream new]
        $e printStackTrace
        set output [$bs toString]
        return $output
    }
}

namespace eval ::ExceptionUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [jexception ExceptionUtil {}]
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
        return [::ExceptionUtil::staticGet_instance]
    }
}


