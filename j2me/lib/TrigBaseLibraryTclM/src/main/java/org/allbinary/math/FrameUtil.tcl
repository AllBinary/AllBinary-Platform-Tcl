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

oo::class create ::FrameUtil {
    superclass ::JObject
}

oo::define ::FrameUtil {
    method initFields_FrameUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_FrameUtil
    }
    

    method getFrameForAngle {angle angleIncrement} {
        return [jdiv [my adjustAngleToFrameAngle [jint $angle]] $angleIncrement]
    }
    

    method getFrameAngle {frame angleIncrement} {
        set frameAngle [jint [expr {[jint [expr {$angleIncrement * $frame}]] - 90}]]
        return [my adjustAngleToFrameAngle $frameAngle]
    }
    

    method adjustAngleToFrameAngle {currentAngle} {
        set angleFactory [::AngleFactory::getInstance]
        if {[expr {$currentAngle > 359}]} {
            set currentAngle ([expr {$currentAngle - [$angleFactory jget TOTAL_ANGLE]}])
            while {[expr {$currentAngle > 359}]} {
                set currentAngle ([expr {$currentAngle - [$angleFactory jget TOTAL_ANGLE]}])
            }
        }
        if {[expr {$currentAngle < 0}]} {
            set currentAngle ([expr {$currentAngle + [$angleFactory jget TOTAL_ANGLE]}])
            while {[expr {$currentAngle < 0}]} {
                set currentAngle ([expr {$currentAngle + [$angleFactory jget TOTAL_ANGLE]}])
            }
        }
        return $currentAngle
    }
}

namespace eval ::FrameUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FrameUtil new]
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
        return [::FrameUtil::staticGet_instance]
    }
}


