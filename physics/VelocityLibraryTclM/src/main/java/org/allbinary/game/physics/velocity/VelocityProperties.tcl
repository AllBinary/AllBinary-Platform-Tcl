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

oo::class create ::VelocityProperties {
    superclass ::BasicVelocityProperties
}

oo::define ::VelocityProperties {
    method initFields_VelocityProperties {} {
        my jset maxForwardVelocity 0
        my jset maxReverseVelocity 0
        my jset maxForwardVelocity 0
        my jset maxReverseVelocity 0
        return
    }
    

    constructor {maxForwardVelocity maxReverseVelocity} {
        next
        my initFields_VelocityProperties
        my setMaxForwardVelocity $maxForwardVelocity
        my setMaxReverseVelocity $maxReverseVelocity
    }
    

    method getMaxForwardVelocity {} {
        return [my jget maxForwardVelocity]
    }
    

    method setMaxForwardVelocity {maxForwardVelocity} {
        my jset maxForwardVelocity $maxForwardVelocity
    }
    

    method getMaxReverseVelocity {} {
        return [my jget maxReverseVelocity]
    }
    

    method setMaxReverseVelocity {maxReverseVelocity} {
        my jset maxReverseVelocity $maxReverseVelocity
    }
    

    method limitMaxXYForwardVelocity {} {
        my limitMaxXYVelocity [my getMaxForwardVelocity]
    }
    

    method limitMaxXYReverseVelocity {} {
        my limitMaxXYVelocity [my getMaxReverseVelocity]
    }
    

    method limitMaxYForwardVelocity {} {
        my limitMaxYVelocity [my getMaxForwardVelocity]
    }
    

    method limitMaxYReverseVelocity {} {
        my limitMaxYVelocity [my getMaxReverseVelocity]
    }
    

    method limitMaxXForwardVelocity {} {
        my limitMaxXVelocity [my getMaxForwardVelocity]
    }
    

    method limitMaxXReverseVelocity {} {
        my limitMaxXVelocity [my getMaxReverseVelocity]
    }
    

    method isOverXYMaxForwardVelocity {} {
        return [my isOverXYMaxVelocity [my getMaxForwardVelocity]]
    }
    

    method isOverXYMaxReverseVelocity {} {
        return [my isOverXYMaxVelocity [my getMaxReverseVelocity]]
    }
    

    method limitXYToForwardAndReverseMaxVelocity {} {
        my limitMaxXYForwardVelocity
        my limitMaxXYReverseVelocity
    }
    

    method limitMaxXYVelocity {maxVelocity} {
        my limitMaxXVelocity $maxVelocity
        my limitMaxYVelocity $maxVelocity
    }
    

    method limitMaxPositiveYVelocity {maxVelocity} {
        if {[expr {[[my jget velocityYBasicDecimal] getUnscaled] > $maxVelocity}]} {
            [my jget velocityYBasicDecimal] setint $maxVelocity
        }
    }
    

    method limitMaxNegativeYVelocity {maxVelocity} {
        if {[expr {[[my jget velocityYBasicDecimal] getUnscaled] < [expr {-$maxVelocity}]}]} {
            [my jget velocityYBasicDecimal] setint [expr {-$maxVelocity}]
        }
    }
    

    method limitMaxYVelocity {maxVelocity} {
        my limitMaxPositiveYVelocity $maxVelocity
        my limitMaxNegativeYVelocity $maxVelocity
    }
    

    method limitMaxXVelocity {maxVelocity} {
        if {[expr {[[my jget velocityXBasicDecimal] getUnscaled] > $maxVelocity}]} {
            [my jget velocityXBasicDecimal] setint $maxVelocity
        }
        if {[expr {[[my jget velocityXBasicDecimal] getUnscaled] < [expr {-$maxVelocity}]}]} {
            [my jget velocityXBasicDecimal] setint [expr {-$maxVelocity}]
        }
    }
    

    method isOverXYMaxVelocity {maxVelocity} {
        if {[expr {[[my jget velocityXBasicDecimal] getUnscaled] > $maxVelocity}]} {
            return true
        }
        if {[expr {[[my jget velocityXBasicDecimal] getUnscaled] < [expr {-$maxVelocity}]}]} {
            return true
        }
        if {[expr {[[my jget velocityYBasicDecimal] getUnscaled] > $maxVelocity}]} {
            return true
        }
        if {[expr {[[my jget velocityYBasicDecimal] getUnscaled] < [expr {-$maxVelocity}]}]} {
            return true
        }
        return false
    }
    

    method setVelocityi {magnitude angle otherAngle} {
        next $magnitude $angle $otherAngle
        my limitXYToForwardAndReverseMaxVelocity
    }
    

    method addVelocityi {magnitude angle otherAngle} {
        next $magnitude $angle $otherAngle
        my limitXYToForwardAndReverseMaxVelocity
    }
}

namespace eval ::VelocityProperties {
    variable NULL_VELOCITY_PROPERTIESValue {}
    variable NULL_VELOCITY_PROPERTIESSet 0
    proc staticGet_NULL_VELOCITY_PROPERTIES {} {
        variable NULL_VELOCITY_PROPERTIESValue
        variable NULL_VELOCITY_PROPERTIESSet
        if {!$NULL_VELOCITY_PROPERTIESSet} {
            set NULL_VELOCITY_PROPERTIESSet 1
            set NULL_VELOCITY_PROPERTIESValue [::VelocityProperties new 0 0]
        }
        return $NULL_VELOCITY_PROPERTIESValue
    }
    proc staticSet_NULL_VELOCITY_PROPERTIES {value} {
        variable NULL_VELOCITY_PROPERTIESValue
        variable NULL_VELOCITY_PROPERTIESSet
        set NULL_VELOCITY_PROPERTIESSet 1
        set NULL_VELOCITY_PROPERTIESValue $value
    }
}


