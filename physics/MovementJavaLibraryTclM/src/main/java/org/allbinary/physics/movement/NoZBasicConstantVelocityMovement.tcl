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

oo::class create ::NoZBasicConstantVelocityMovement {
    superclass ::Movement
}

oo::define ::NoZBasicConstantVelocityMovement {
    method initFields_NoZBasicConstantVelocityMovement {} {
        my jset velocityProperties {}
        my jset speedBasicDecimal {}
        my jset axisMathVectorUtil {}
        
        my jset speedBasicDecimal [::BasicDecimal::staticGet_ZERO_BIGDECIMAL]
        my jset axisMathVectorUtil [::AxisMathVectorUtil::getInstance]
        return
    }
    

    constructor {basicDecimal velocityProperties} {
        next
        my initFields_NoZBasicConstantVelocityMovement
        my setSpeedBasicDecimal $basicDecimal
        my jset velocityProperties $velocityProperties
    }
    

    method init {speedBasicDecimal angle otherAngle} {
        my jset speedBasicDecimal $speedBasicDecimal
        set angleFactory [::AngleFactory::getInstance]
        [my jget velocityProperties] setVelocityWithBigDecimal $speedBasicDecimal [$angleFactory getAt $angle] [$angleFactory getAt $otherAngle]
    }
    

    method moveOutsideRadius {layer radius angle otherAngle} {
        set scaleFactorValue [[my jget speedBasicDecimal] getScaledFactorValue]
        set xVector [jint ([expr {[[my jget axisMathVectorUtil] calculateX $radius $angle] / $scaleFactorValue}])]
        set yVector [jint ([expr {[[my jget axisMathVectorUtil] calculateY $radius $angle] / $scaleFactorValue}])]
        $layer moveDXYZ $xVector $yVector 0
    }
    

    method process {layer} {
        $layer moveDXYZ [[[my jget velocityProperties] getVelocityXBasicDecimalP] getScaled] [[[my jget velocityProperties] getVelocityYBasicDecimalP] getScaled] 0
    }
    

    method toString {} {
        return [[my jget velocityProperties] toString]
    }
    

    method stop {} {
        [my jget velocityProperties] zero
    }
    

    method getVelocityProperties {} {
        return [my jget velocityProperties]
    }
    

    method setVelocityProperties {velocityProperties} {
        my jset velocityProperties $velocityProperties
    }
    

    method setSpeedBasicDecimal {speedBasicDecimal} {
        my jset speedBasicDecimal $speedBasicDecimal
    }
    

    method getSpeedBasicDecimal {} {
        return [my jget speedBasicDecimal]
    }
}

namespace eval ::NoZBasicConstantVelocityMovement {
}


