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
# package org.allbinary.math

oo::class create ::DistanceUtil {
    superclass ::JObject
}

oo::define ::DistanceUtil {
    method initFields_DistanceUtil {} {
        my jset mathUtil {}
        my jset mathUtil [::MathUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_DistanceUtil
    }
    
    

    method getDistance {x1 y1 x2 y2} {
        set dx [jint [expr {$x1 - $x2}]]
        set dy [jint [expr {$y1 - $y2}]]
        return [jint [[my jget mathUtil] sqrt [jint [expr {([jint [expr {$dx * $dx}]]) + ([jint [expr {$dy * $dy}]])}]]]]
    }
}

namespace eval ::DistanceUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DistanceUtil new]
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
        return [::DistanceUtil::staticGet_instance]
    }
}


