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
# package org.allbinary.business.advertisement

oo::class create ::BottomLimiter {
    superclass ::JObject
}

oo::define ::BottomLimiter {
    method initFields_BottomLimiter {} {
        my jset bottom 0
        my jset deltaY 0
        my jset lower 0
        my jset higher 0
        my jset bottom 0
        my jset deltaY 0
        my jset lower 0
        my jset higher 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_BottomLimiter
    }
    

    method init {lower higher} {
        my jset lower $lower
        my jset higher $higher
    }
    

    method update {} {
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set gameAdState [[::GameAdStateFactory::getInstance] getCurrentInstance]
        if {[$gameAdState isShowingAt]} {
            my jset deltaY [my jget higher]
        } else {
            my jset deltaY [my jget lower]
        }
        my jset bottom [expr {[$displayInfo getLastHeight] - [my jget deltaY]}]
    }
    

    method getDeltaY {} {
        return [my jget deltaY]
    }
    

    method getBottom {} {
        return [my jget bottom]
    }
}

namespace eval ::BottomLimiter {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BottomLimiter new]
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
        return [::BottomLimiter::staticGet_instance]
    }
}


