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

oo::class create ::FlockingAI {
    superclass ::BasicAI
}

oo::define ::FlockingAI {
    method initFields_FlockingAI {} {
        my jset allowedDistance 0
        
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_FlockingAI
        set allowedDistance [$hashtable get [::BasePatrolAI::staticGet_MAX_DISTANCE]]
        my jset allowedDistance [$allowedDistance intValue]
    }
    

    method processAI {allBinaryLayerManager} {
        set maxDistance 0
        set farAllbinaryLayer [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        set groupLayerManagerListener [::GroupLayerManagerListener::getInstance]
        set list [$groupLayerManagerListener getList [[::BasicGroupFactory::getInstance] jget ENEMY]]
        set size [$list size]
        set allBinaryLayer {}
        set ownerLayerInterface {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set allBinaryLayer [$list get $index]
            if {[expr {[$allBinaryLayer getType] != [::WeaponLayer::getStaticType]}]} {
                set distance [my getXYDistance $allBinaryLayer]
                if {[expr {$distance > $maxDistance}]} {
                    set maxDistance $distance
                    set farAllbinaryLayer $allBinaryLayer
                    if {[expr {$distance > [my jget allowedDistance]}]} {
                        break
                    }
                }
            }
        }
        if {[expr {$maxDistance > [my jget allowedDistance]}]} {
            if {[expr {$farAllbinaryLayer ne [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]}]} {
                set ownerLayerInterface [my getOwnerLayerInterface]
                if {[expr {[$farAllbinaryLayer getXP] < [$ownerLayerInterface getXP]}]} {
                    my processKeyAI [::Canvas::staticGet_LEFT]
                } elseif {[expr {[$farAllbinaryLayer getXP] > [$ownerLayerInterface getXP]}]} {
                    my processKeyAI [::Canvas::staticGet_RIGHT]
                } elseif {[expr {[$farAllbinaryLayer getYP] > [$ownerLayerInterface getYP]}]} {
                    my processKeyAI [::Canvas::staticGet_UP]
                } elseif {[expr {[$farAllbinaryLayer getYP] < [$ownerLayerInterface getYP]}]} {
                    my processKeyAI [::Canvas::staticGet_DOWN]
                }
            }
        }
    }
    

    method getXYDistance {allBinaryLayer} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set xTotalDistance [expr {([expr {[$allBinaryLayer getXP] + [$allBinaryLayer getHalfWidth]}]) - ([expr {[$ownerLayerInterface getXP] + [$ownerLayerInterface getHalfWidth]}])}]
        set yTotalDistance [expr {([expr {[$allBinaryLayer getYP] + [$allBinaryLayer getHalfHeight]}]) - ([expr {[$ownerLayerInterface getYP] + [$ownerLayerInterface getHalfHeight]}])}]
        set mathUtil [::MathUtil::getInstance]
        set totalDistance [expr {[$mathUtil abs $xTotalDistance] + [$mathUtil abs $yTotalDistance]}]
        return $totalDistance
    }
}

namespace eval ::FlockingAI {
}


