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
# package org.allbinary.logic.java.bool

oo::class create ::BooleanFactory {
    superclass ::JObject
}

oo::define ::BooleanFactory {
    method initFields_BooleanFactory {} {
        my jset TRUE {}
        my jset FALSE {}
        my jset TRUE_STRING {}
        my jset FALSE_STRING {}
        my jset YES {}
        my jset NO {}
        my jset TRUE true
        my jset FALSE false
        my jset TRUE_STRING [[my jget TRUE] toString]
        my jset FALSE_STRING [[my jget FALSE] toString]
        my jset YES "yes"
        my jset NO "no"
        return
    }

    constructor {} {
        next
        my initFields_BooleanFactory
    }
    
    

    method toStringb {bool} {
        if {$bool} {
            return [my jget TRUE_STRING]
        } else {
            return [my jget FALSE_STRING]
        }
    }
}

namespace eval ::BooleanFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BooleanFactory new]
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
        return [::BooleanFactory::staticGet_instance]
    }
}


