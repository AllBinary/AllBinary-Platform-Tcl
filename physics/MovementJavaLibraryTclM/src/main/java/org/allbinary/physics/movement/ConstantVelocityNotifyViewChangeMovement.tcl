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
# package org.allbinary.physics.movement

oo::class create ::ConstantVelocityNotifyViewChangeMovement {
    superclass ::Movement
}

oo::define ::ConstantVelocityNotifyViewChangeMovement {
    method initFields_ConstantVelocityNotifyViewChangeMovement {} {
        my jset basicVelocityProperties {}
        my jset speedBasicDecimal {}
        my jset axisMathVectorUtil {}
        
        
        my jset axisMathVectorUtil [::AxisMathVectorUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_ConstantVelocityNotifyViewChangeMovement
        my jset speedBasicDecimal [::BasicDecimal::staticGet_ZERO_BIGDECIMAL]
        my jset basicVelocityProperties [::BasicVelocityProperties new]
    }
    

    method init {speedBasicDecimal angle otherAngle} {
        my jset speedBasicDecimal $speedBasicDecimal
        set angleFactory [::AngleFactory::getInstance]
        [my jget basicVelocityProperties] setVelocityWithBigDecimal $speedBasicDecimal [$angleFactory getAt $angle] [$angleFactory getAt $otherAngle]
    }
    

    method moveOutsideRadius {layer radius angle otherAngle} {
        set scaleFactorValue [[my jget speedBasicDecimal] getScaledFactorValue]
        set xVector [jint ([expr {[[my jget axisMathVectorUtil] calculateX $radius $angle] / $scaleFactorValue}])]
        set yVector [jint ([expr {[[my jget axisMathVectorUtil] calculateY $radius $angle] / $scaleFactorValue}])]
        set zVector [jint ([expr {[[my jget axisMathVectorUtil] calculateZ $radius $otherAngle] / $scaleFactorValue}])]
        $layer moveDXYZ $xVector $yVector $zVector
    }
    

    method process {layer} {
        set x [[[my jget basicVelocityProperties] getVelocityXBasicDecimalP] getScaled]
        set y [[[my jget basicVelocityProperties] getVelocityYBasicDecimalP] getScaled]
        set z [[[my jget basicVelocityProperties] getVelocityZBasicDecimalP] getScaled]
        $layer moveDXYZ $x $y $z
        if {[expr {[expr {[expr {$x != 0}] || [expr {$y != 0}]}] || [expr {$z != 0}]}]} {
            $layer onViewPositionChangeEvent
        }
    }
    

    method stop {} {
        [my jget basicVelocityProperties] zero
    }
}

namespace eval ::ConstantVelocityNotifyViewChangeMovement {
}


