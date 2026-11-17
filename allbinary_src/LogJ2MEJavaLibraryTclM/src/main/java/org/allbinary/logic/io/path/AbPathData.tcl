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
# package org.allbinary.logic.io.path

oo::class create ::AbPathData {
    superclass ::JObject
}

oo::define ::AbPathData {
    method initFields_AbPathData {} {
        my jset EXTENSION_SEP {}
        my jset SEPARATORCHAR 0
        my jset SEPARATOR {}
        my jset EXTENSION_SEP [[::CommonSeps::getInstance] jget PERIOD]
        my jset SEPARATORCHAR [scan "/" %c]
        my jset SEPARATOR [[::CommonSeps::getInstance] jget FORWARD_SLASH]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AbPathData
    }
}

namespace eval ::AbPathData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbPathData new]
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
        return [::AbPathData::staticGet_instance]
    }
}


