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

oo::class create ::HorizontalScreenPatrolAI {
    superclass ::BasicAI
}

oo::define ::HorizontalScreenPatrolAI {
    method initFields_HorizontalScreenPatrolAI {} {
        my jset keyDirection 0
        my jset displayInfoSingleton {}
        my jset firingX 0
        my jset firedIndex 0
        my jset MAX_FIRE 0
        my jset timeDelayHelper {}
        my jset secondaryPlayerQueue {}
        my jset sound {}
        my jset keyDirection [::Canvas::staticGet_LEFT]
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset firingX [[my jget displayInfoSingleton] getLastHalfWidth]
        my jset firedIndex 0
        my jset MAX_FIRE 28
        my jset timeDelayHelper [::TimeDelayHelper new 240]
        my jset secondaryPlayerQueue [::SecondaryPlayerQueueFactory::getInstance]
        
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_HorizontalScreenPatrolAI
        my jset sound [$hashtable get [::HorizontalScreenPatrolAI::staticGet_SOUND]]
        if {[expr {[my jget sound] eq {}}]} {
            error [jexception Exception "No Sound Provided!!"]
        }
    }
    

    method processAI {allBinaryLayerManager} {
        next [my jget keyDirection]
        if {[[my jget timeDelayHelper] isTimeTNT]} {
            set layerInterface [my getOwnerLayerInterface]
            set currentOwnerLayerX [$layerInterface getXP]
            if {[expr {$currentOwnerLayerX < [expr {-[$layerInterface getWidth]}]}]} {
                set y [[::MyRandomFactory::getInstance] getAbsoluteNextIntAllowZero 50]
                $layerInterface setPosition [expr {[expr {[[my jget displayInfoSingleton] getLastWidth] + [$layerInterface getWidth]}] + 50}] $y [$layerInterface getZP]
                my jset firedIndex 0
                my jset firingX [expr {[[my jget displayInfoSingleton] getLastHalfWidth] + [[::MyRandomFactory::getInstance] getNextInt [[my jget displayInfoSingleton] getLastHalfWidth]]}]
                [my jget secondaryPlayerQueue] add [my jget sound]
            }
            if {[expr {[expr {$currentOwnerLayerX < [my jget firingX]}] && [expr {$currentOwnerLayerX > [expr {-[$layerInterface getWidth]}]}]}]} {
                next [::Canvas::staticGet_KEY_NUM1]
                set gameLayerManager $allBinaryLayerManager
                set FIRE [expr {([expr {[[$gameLayerManager getGameInfo] getCurrentLevel] + 12}]) >> 2}]
                if {[expr {$FIRE > [my jget MAX_FIRE]}]} {
                    set FIRE [my jget MAX_FIRE]
                }
                if {[expr {[my jget firedIndex] > $FIRE}]} {
                    my jset firedIndex 0
                    my jset firingX [::Integer::staticGet_MIN_VALUE]
                }
                my jpostinc firedIndex 1
            }
        }
    }
    

    method nextDirection {} {
    }
}

namespace eval ::HorizontalScreenPatrolAI {
    variable SOUNDValue {}
    variable SOUNDSet 0
    proc staticGet_SOUND {} {
        variable SOUNDValue
        variable SOUNDSet
        if {!$SOUNDSet} {
            set SOUNDSet 1
            set SOUNDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 433]
        }
        return $SOUNDValue
    }
    proc staticSet_SOUND {value} {
        variable SOUNDValue
        variable SOUNDSet
        set SOUNDSet 1
        set SOUNDValue $value
    }
}


