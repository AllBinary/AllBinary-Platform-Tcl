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
# package org.allbinary.game.ag.ai.scroller

oo::class create ::BasePatrolAI {
    superclass ::BasicAI
}

oo::define ::BasePatrolAI {
    method initFields_BasePatrolAI {} {
        my jset maxDistance {}
        my jset currentDistance 0
        my jset xTotalDistance 0
        my jset lastKeyDirection 0
        my jset keyDirection 0
        
        
        my jset xTotalDistance 0
        my jset lastKeyDirection [::Canvas::staticGet_RIGHT]
        my jset keyDirection [::Canvas::staticGet_RIGHT]
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_BasePatrolAI
        my jset maxDistance [$hashtable get [::BasePatrolAI::staticGet_MAX_DISTANCE]]
        my jset currentDistance [[my jget maxDistance] intValue]
    }
    

    method update {} {
        my updateTotalDistance
        my changeDirectionIfReachedPacingAreaMax
    }
    

    method updateTotalDistance {} {
        set velocityInterfaceCompositeInterface [my getOwnerLayerInterface]
        set velocityProperties [$velocityInterfaceCompositeInterface getVelocityProperties]
        my jset xTotalDistance [jint [expr {[my jget xTotalDistance] + [[$velocityProperties getVelocityXBasicDecimalP] getScaled]}]]
    }
    

    method changeDirectionIfReachedPacingAreaMax {} {
        set mathUtil [::MathUtil::getInstance]
        set totalDistance [$mathUtil abs [my jget xTotalDistance]]
        if {[expr {$totalDistance > [my jget currentDistance]}]} {
            my nextDirection
        }
    }
    

    method nextDirection {} {
        if {[expr {[my jget lastKeyDirection] == [::Canvas::staticGet_LEFT]}]} {
            my jset keyDirection [::Canvas::staticGet_RIGHT]
            my jset lastKeyDirection [my jget keyDirection]
            my jset xTotalDistance 0
        } elseif {[expr {[my jget lastKeyDirection] == [::Canvas::staticGet_RIGHT]}]} {
            my jset keyDirection [::Canvas::staticGet_LEFT]
            my jset lastKeyDirection [my jget keyDirection]
            my jset xTotalDistance 0
        }
    }
    

    method disable {} {
    }
}

namespace eval ::BasePatrolAI {
    variable MAX_DISTANCEValue {}
    variable MAX_DISTANCESet 0
    proc staticGet_MAX_DISTANCE {} {
        variable MAX_DISTANCEValue
        variable MAX_DISTANCESet
        if {!$MAX_DISTANCESet} {
            set MAX_DISTANCESet 1
            set MAX_DISTANCEValue [[::SmallIntegerSingletonFactory::getInstance] getAt 2]
        }
        return $MAX_DISTANCEValue
    }
    proc staticSet_MAX_DISTANCE {value} {
        variable MAX_DISTANCEValue
        variable MAX_DISTANCESet
        set MAX_DISTANCESet 1
        set MAX_DISTANCEValue $value
    }
    variable DIRECTION_ARRAYValue {}
    variable DIRECTION_ARRAYSet 0
    proc staticGet_DIRECTION_ARRAY {} {
        variable DIRECTION_ARRAYValue
        variable DIRECTION_ARRAYSet
        if {!$DIRECTION_ARRAYSet} {
            set DIRECTION_ARRAYSet 1
            set DIRECTION_ARRAYValue [[::SmallIntegerSingletonFactory::getInstance] getAt 3]
        }
        return $DIRECTION_ARRAYValue
    }
    proc staticSet_DIRECTION_ARRAY {value} {
        variable DIRECTION_ARRAYValue
        variable DIRECTION_ARRAYSet
        set DIRECTION_ARRAYSet 1
        set DIRECTION_ARRAYValue $value
    }
    variable FIRING_DISTANCEValue {}
    variable FIRING_DISTANCESet 0
    proc staticGet_FIRING_DISTANCE {} {
        variable FIRING_DISTANCEValue
        variable FIRING_DISTANCESet
        if {!$FIRING_DISTANCESet} {
            set FIRING_DISTANCESet 1
            set FIRING_DISTANCEValue [[::SmallIntegerSingletonFactory::getInstance] getAt 4]
        }
        return $FIRING_DISTANCEValue
    }
    proc staticSet_FIRING_DISTANCE {value} {
        variable FIRING_DISTANCEValue
        variable FIRING_DISTANCESet
        set FIRING_DISTANCESet 1
        set FIRING_DISTANCEValue $value
    }
    variable SPEEDValue {}
    variable SPEEDSet 0
    proc staticGet_SPEED {} {
        variable SPEEDValue
        variable SPEEDSet
        if {!$SPEEDSet} {
            set SPEEDSet 1
            set SPEEDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 5]
        }
        return $SPEEDValue
    }
    proc staticSet_SPEED {value} {
        variable SPEEDValue
        variable SPEEDSet
        set SPEEDSet 1
        set SPEEDValue $value
    }
}


