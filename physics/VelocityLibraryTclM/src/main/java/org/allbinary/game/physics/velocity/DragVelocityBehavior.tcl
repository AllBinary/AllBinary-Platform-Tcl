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

oo::class create ::DragVelocityBehavior {
    superclass ::VelocityBehaviorBase
}

oo::define ::DragVelocityBehavior {
    method initFields_DragVelocityBehavior {} {
        return
    }

    constructor {} {
        next
        my initFields_DragVelocityBehavior
    }
    

    method reduce {velocityProperties nominator denominator} {
        if {[expr {[[$velocityProperties getVelocityXBasicDecimalP] getUnscaled] != 0}]} {
            set basicDecimal [$velocityProperties getVelocityXBasicDecimalP]
            $basicDecimal multiplyint $nominator
            $basicDecimal divideint $denominator
        }
        if {[expr {[[$velocityProperties getVelocityYBasicDecimalP] getUnscaled] != 0}]} {
            set basicDecimal [$velocityProperties getVelocityYBasicDecimalP]
            $basicDecimal multiplyint $nominator
            $basicDecimal divideint $denominator
        }
    }
    

    method reduceX {velocityProperties nominator denominator} {
        set basicDecimal [$velocityProperties getVelocityXBasicDecimalP]
        if {[expr {[$basicDecimal getUnscaled] != 0}]} {
            $basicDecimal multiplyint $nominator
            $basicDecimal divideint $denominator
        }
    }
    

    method reduceY {velocityProperties nominator denominator} {
        if {[expr {[[$velocityProperties getVelocityYBasicDecimalP] getUnscaled] != 0}]} {
            set basicDecimal [$velocityProperties getVelocityYBasicDecimalP]
            $basicDecimal multiplyint $nominator
            $basicDecimal divideint $denominator
        }
    }
}

namespace eval ::DragVelocityBehavior {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DragVelocityBehavior new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
}


