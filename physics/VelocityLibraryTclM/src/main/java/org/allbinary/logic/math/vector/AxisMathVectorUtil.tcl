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
# package org.allbinary.logic.math.vector

oo::class create ::AxisMathVectorUtil {
    superclass ::JObject
}

oo::define ::AxisMathVectorUtil {
    method initFields_AxisMathVectorUtil {} {
        my jset noDecimalTrigTable {}
        my jset noDecimalTrigTable [::NoDecimalTrigTable::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_AxisMathVectorUtil
    }
    
    

    method calculateX {magnitude angle} {
        return [expr {[expr {$magnitude * [[my jget noDecimalTrigTable] cos $angle]}] / 10}]
    }
    

    method calculateY {magnitude angle} {
        return [expr {[expr {$magnitude * [[my jget noDecimalTrigTable] sin $angle]}] / 10}]
    }
    

    method calculateZ {magnitude otherAngle} {
        return [expr {[expr {$magnitude * [[my jget noDecimalTrigTable] sin $otherAngle]}] / 10}]
    }
}

namespace eval ::AxisMathVectorUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AxisMathVectorUtil new]
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
        return [::AxisMathVectorUtil::staticGet_instance]
    }
}


