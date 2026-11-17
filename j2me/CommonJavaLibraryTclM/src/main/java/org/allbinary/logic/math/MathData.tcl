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
# package org.allbinary.logic.math

oo::class create ::MathData {
    superclass ::JObject
}

oo::define ::MathData {
    method initFields_MathData {} {
        my jset EQUALS {}
        my jset PLUS {}
        my jset GREATER_THAN {}
        my jset MINUS {}
        my jset DIVIDE {}
        my jset MULTIPLY {}
        
        my jset PLUS "+"
        my jset GREATER_THAN ">"
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_MathData
        set commonSeps [::CommonSeps::getInstance]
        my jset EQUALS [$commonSeps jget EQUALS]
        my jset MINUS [$commonSeps jget DASH]
        my jset DIVIDE [$commonSeps jget FORWARD_SLASH]
        my jset MULTIPLY [[::CommonPhoneStrings::getInstance] jget STAR]
    }
}

namespace eval ::MathData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MathData new]
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
        return [::MathData::staticGet_instance]
    }
}


