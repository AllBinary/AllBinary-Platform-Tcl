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
# package org.allbinary.animation.transition.shake

oo::class create ::ShakeEventFactory {
    superclass ::JObject
}

oo::define ::ShakeEventFactory {
    method initFields_ShakeEventFactory {} {
        my jset MICRO {}
        my jset SMALL {}
        my jset MEDIUM {}
        my jset LARGE {}
        my jset MICRO [::ShakeEvent new]
        my jset SMALL [::ShakeEvent new]
        my jset MEDIUM [::ShakeEvent new]
        my jset LARGE [::ShakeEvent new]
        return
    }

    constructor {} {
        next
        my initFields_ShakeEventFactory
    }
    
    

    method init {} {
    }
}

namespace eval ::ShakeEventFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ShakeEventFactory new]
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
        return [::ShakeEventFactory::staticGet_instance]
    }
}


