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
# package org.allbinary.logic.math.permutations

oo::class create ::ComparableObject {
    superclass ::JObject
}

oo::define ::ComparableObject {
    method initFields_ComparableObject {} {
        return
    }

    constructor {} {
        next
        my initFields_ComparableObject
    }
    

    method compareTo {anyType} {
        if {[expr {[[::TsUtil::getInstance] hashCode1 [self]] < [[::TsUtil::getInstance] hashCode1 $anyType]}]} {
            return [expr {-1}]
        } elseif {[expr {[[::TsUtil::getInstance] hashCode1 [self]] > [[::TsUtil::getInstance] hashCode1 $anyType]}]} {
            return 1
        }
        return 0
    }
}

namespace eval ::ComparableObject {
}


