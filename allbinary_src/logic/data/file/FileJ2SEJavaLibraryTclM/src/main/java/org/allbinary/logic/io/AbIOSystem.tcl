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
# package org.allbinary.logic.io

oo::class create ::AbIOSystem {
    superclass ::JObject
}

oo::define ::AbIOSystem {
    method initFields_AbIOSystem {} {
        my jset type {}
        my jset type "java.io"
        return
    }

    constructor {} {
        next
        my initFields_AbIOSystem
    }
    
    

    method getType {} {
        return [my jget type]
    }
    

    method isType {type} {
        if {[expr {[jcompareto [my jget type] $type] == 0}]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::AbIOSystem {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbIOSystem new]
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
        return [::AbIOSystem::staticGet_instance]
    }
}


