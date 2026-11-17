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
# package org.allbinary.game.physics.velocity

oo::class create ::BasicVelocityProperties {
    superclass ::JObject
}

oo::define ::BasicVelocityProperties {
    method initFields_BasicVelocityProperties {} {
        my jset logUtil {}
        my jset velocityXBasicDecimal {}
        my jset velocityYBasicDecimal {}
        my jset velocityZBasicDecimal {}
        my jset axisMathVectorUtil {}
        my jset directionUtil {}
        my jset logUtil [::LogUtil::getInstance]
        
        
        
        my jset axisMathVectorUtil [::AxisMathVectorUtil::getInstance]
        my jset directionUtil [::DirectionUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_BasicVelocityProperties
        my jset velocityXBasicDecimal [::BasicDecimal new 0]
        my jset velocityYBasicDecimal [::BasicDecimal new 0]
        my jset velocityZBasicDecimal [::BasicDecimal new 0]
    }
    

    method zero {} {
        [my jget velocityXBasicDecimal] setint 0
        [my jget velocityYBasicDecimal] setint 0
        [my jget velocityZBasicDecimal] setint 0
    }
    

    method getVelocityXBasicDecimalP {} {
        return [my jget velocityXBasicDecimal]
    }
    

    method getVelocityYBasicDecimalP {} {
        return [my jget velocityYBasicDecimal]
    }
    

    method getVelocityZBasicDecimalP {} {
        return [my jget velocityZBasicDecimal]
    }
    

    method setVelocityWithBigDecimalAndDirection {magnitudeBasicDecimal direction otherDirection} {
        set angle [[my jget directionUtil] getAngle $direction]
        set otherAngle [[my jget directionUtil] getAngle $otherDirection]
        my setVelocityWithBigDecimal $magnitudeBasicDecimal $angle $otherAngle
    }
    

    method setVelocityWithDirection {magnitude direction otherDirection} {
        set angle [[my jget directionUtil] getAngle $direction]
        set otherAngle [[my jget directionUtil] getAngle $otherDirection]
        my setVelocity $magnitude $angle $otherAngle
    }
    

    method addVelocityWithBigDecimalAndDirection {magnitudeBasicDecimal direction otherDirection} {
        set angle [[my jget directionUtil] getAngle $direction]
        set otherAngle [[my jget directionUtil] getAngle $otherDirection]
        my addVelocityWithBigDecimal $magnitudeBasicDecimal $angle $otherAngle
    }
    

    method addVelocityWithDirection {magnitude direction otherDirection} {
        set angle [[my jget directionUtil] getAngle $direction]
        set otherAngle [[my jget directionUtil] getAngle $otherDirection]
        my addVelocity $magnitude $angle $otherAngle
    }
    

    method setVelocityWithBigDecimal {magnitudeBasicDecimal angle otherAngle} {
        set magnitude [$magnitudeBasicDecimal getUnscaled]
        my setVelocity $magnitude $angle $otherAngle
    }
    

    method addVelocityWithBigDecimal {magnitudeBasicDecimal angle otherAngle} {
        set magnitude [$magnitudeBasicDecimal getUnscaled]
        my addVelocity $magnitude $angle $otherAngle
    }
    

    method setVelocity {magnitude angle otherAngle} {
        my setVelocityi $magnitude [jint [$angle getValue]] [jint [$otherAngle getValue]]
    }
    

    method addVelocity {magnitude angle otherAngle} {
        my addVelocityi $magnitude [jint [$angle getValue]] [jint [$otherAngle getValue]]
    }
    

    method setVelocityi {magnitude angle otherAngle} {
        set xVector ([expr {[[my jget axisMathVectorUtil] calculateX $magnitude $angle] / [[my jget velocityXBasicDecimal] getScaledFactorValue]}])
        set yVector ([expr {[[my jget axisMathVectorUtil] calculateY $magnitude $angle] / [[my jget velocityYBasicDecimal] getScaledFactorValue]}])
        set zVector ([expr {[[my jget axisMathVectorUtil] calculateZ $magnitude $otherAngle] / [[my jget velocityZBasicDecimal] getScaledFactorValue]}])
        [my jget velocityXBasicDecimal] setlong $xVector
        [my jget velocityYBasicDecimal] setlong $yVector
        [my jget velocityZBasicDecimal] setlong $zVector
    }
    

    method addVelocityi {magnitude angle otherAngle} {
        set xVector ([expr {[[my jget axisMathVectorUtil] calculateX $magnitude $angle] / [[my jget velocityXBasicDecimal] getScaledFactorValue]}])
        set yVector ([expr {[[my jget axisMathVectorUtil] calculateY $magnitude $angle] / [[my jget velocityYBasicDecimal] getScaledFactorValue]}])
        set zVector ([expr {[[my jget axisMathVectorUtil] calculateZ $magnitude $otherAngle] / [[my jget velocityZBasicDecimal] getScaledFactorValue]}])
        [my jget velocityXBasicDecimal] addlong $xVector
        [my jget velocityYBasicDecimal] addlong $yVector
        [my jget velocityZBasicDecimal] addlong $zVector
    }
    

    method toString {} {
        set commonSeps [::CommonSeps::getInstance]
        set positionStrings [::PositionStrings::getInstance]
        set stringBuffer [::StringMaker new]
        set stringUtil [::StringUtil::getInstance]
        $stringBuffer append "Velocity "
        $stringBuffer append [$positionStrings jget X_LABEL]
        $stringBuffer append [$stringUtil toString1 [my jget velocityXBasicDecimal]]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget Y_LABEL]
        $stringBuffer append [$stringUtil toString1 [my jget velocityYBasicDecimal]]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget Z_LABEL]
        $stringBuffer append [$stringUtil toString1 [my jget velocityZBasicDecimal]]
        return [$stringBuffer toString]
    }
}

namespace eval ::BasicVelocityProperties {
}


