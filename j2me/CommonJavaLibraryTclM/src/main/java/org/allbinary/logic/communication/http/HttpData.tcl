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
# package org.allbinary.logic.communication.http

oo::class create ::HttpData {
    superclass ::JObject
}

oo::define ::HttpData {
    method initFields_HttpData {} {
        my jset EQUALS {}
        my jset PARAM_SEP {}
        my jset URL_PARAM_SEP {}
        my jset URL_LABEL {}
        
        
        
        my jset URL_LABEL "Url: "
        return
    }
    
    

    constructor {} {
        next
        my initFields_HttpData
        set commonSeps [::CommonSeps::getInstance]
        my jset EQUALS [$commonSeps jget EQUALS]
        my jset PARAM_SEP [$commonSeps jget AMPERSAND]
        my jset URL_PARAM_SEP [$commonSeps jget QUESTION]
    }
}

namespace eval ::HttpData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::HttpData new]
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
        return [::HttpData::staticGet_instance]
    }
}


