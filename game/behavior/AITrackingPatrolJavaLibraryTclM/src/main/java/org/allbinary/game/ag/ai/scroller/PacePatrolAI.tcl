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

oo::class create ::PacePatrolAI {
    superclass ::BasePatrolAI
}

oo::define ::PacePatrolAI {
    method initFields_PacePatrolAI {} {
        my jset trackingList {}
        my jset firingDistance 0
        my jset isFollowLimitedByTerrain false
        
        my jset firingDistance 0
        my jset isFollowLimitedByTerrain false
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $hashtable $ownerLayerInterface $gameInput
        my initFields_PacePatrolAI
        [::TrackingEventHandler::getInstance] addListenerInterface [self]
        my jset trackingList [::BasicArrayListD new]
    }
    

    method processAI {allBinaryLayerManager} {
        my update
        set direction [my setFiringDirectionForTargetIfInRange]
        set directionFactory [::DirectionFactory::getInstance]
        if {[expr {$direction eq [$directionFactory jget LEFT]}]} {
            if {[expr {[expr {[my jget lastKeyDirection] != [my jget keyDirection]}] || [expr {![my jget isFollowLimitedByTerrain]}]}]} {
                next [::Canvas::staticGet_LEFT]
            }
            my jset keyDirection [::Canvas::staticGet_LEFT]
            my jset lastKeyDirection [my jget keyDirection]
            my jset xTotalDistance 0
            next [::Canvas::staticGet_KEY_NUM1]
        } elseif {[expr {$direction eq [$directionFactory jget RIGHT]}]} {
            if {[expr {[expr {[my jget lastKeyDirection] != [my jget keyDirection]}] || [expr {![my jget isFollowLimitedByTerrain]}]}]} {
                next [::Canvas::staticGet_RIGHT]
            }
            my jset keyDirection [::Canvas::staticGet_RIGHT]
            my jset lastKeyDirection [my jget keyDirection]
            my jset xTotalDistance 0
            next [::Canvas::staticGet_KEY_NUM1]
        } else {
            next [my jget keyDirection]
        }
    }
    

    method setFiringDirectionForTargetIfInRange {} {
        set directionFactory [::DirectionFactory::getInstance]
        set ownerLayerInterface [my getOwnerLayerInterface]
        set direction [$directionFactory jget NOT_BORDERED_WITH]
        set lastTrackingEvent {}
        set lastTrackingLayerInterface {}
        set directionCompositeInterface {}
        set size [[my jget trackingList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set lastTrackingEvent [[my jget trackingList] get 0]
            set lastTrackingLayerInterface [$lastTrackingEvent getLayerInterface]
            set x [$lastTrackingLayerInterface getXP]
            set y [$lastTrackingLayerInterface getYP]
            set yDistance [expr {[expr {[$ownerLayerInterface getYP] - $y}] - [$ownerLayerInterface getHeight]}]
            set xDistance [expr {[expr {[$ownerLayerInterface getXP] - $x}] - [$ownerLayerInterface getWidth]}]
            set absXDistance [expr {abs($xDistance)}]
            set absYDistance [expr {abs($yDistance)}]
            if {[expr {$absYDistance <= 100}]} {
                if {[expr {$absXDistance < [jdiv [my getFiringDistance] 2]}]} {
                    set directionCompositeInterface [my getOwnerLayerInterface]
                    if {[expr {[expr {$xDistance < 0}] && [expr {[$directionCompositeInterface getDirection] == [$directionFactory jget RIGHT]}]}]} {
                        set direction [$directionFactory jget RIGHT]
                    } elseif {[expr {[expr {$xDistance > 0}] && [expr {[$directionCompositeInterface getDirection] == [$directionFactory jget LEFT]}]}]} {
                        set direction [$directionFactory jget LEFT]
                    }
                }
            }
        }
        return $direction
    }
    

    method disable {} {
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onMovement {trackingEvent} {
        [my jget trackingList] clear
        [my jget trackingList] add $trackingEvent
    }
    

    method getFiringDistance {} {
        return [my jget firingDistance]
    }
    

    method setFiringDistance {firingDistance} {
        my jset firingDistance $firingDistance
    }
}

namespace eval ::PacePatrolAI {
}


