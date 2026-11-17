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
        my jset NONE {}
        my jset NONE "No Stack Trace"
        return
    }
    
    

    constructor {} {
        next
        my initFields_ExceptionUtil
    }
    

    method getStackTrace {e} {
        $e printStackTrace
        return [my jget NONE]
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
            set instanceValue [::ExceptionUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable PRETEND_EXCEPTIONValue {}
    variable PRETEND_EXCEPTIONSet 0
    proc staticGet_PRETEND_EXCEPTION {} {
        variable PRETEND_EXCEPTIONValue
        variable PRETEND_EXCEPTIONSet
        if {!$PRETEND_EXCEPTIONSet} {
            set PRETEND_EXCEPTIONSet 1
            set PRETEND_EXCEPTIONValue [jexception Exception "Not Really An Exception"]
        }
        return $PRETEND_EXCEPTIONValue
    }
    proc staticSet_PRETEND_EXCEPTION {value} {
        variable PRETEND_EXCEPTIONValue
        variable PRETEND_EXCEPTIONSet
        set PRETEND_EXCEPTIONSet 1
        set PRETEND_EXCEPTIONValue $value
    }
    proc getInstance {} {
        return [::ExceptionUtil::staticGet_instance]
    }
}


