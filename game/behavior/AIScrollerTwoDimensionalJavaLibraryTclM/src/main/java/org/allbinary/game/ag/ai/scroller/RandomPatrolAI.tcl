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

oo::class create ::RandomPatrolAI {
    superclass ::BasePatrolAI
}

oo::define ::RandomPatrolAI {
    method initFields_RandomPatrolAI {} {
        my jset changedDirection false
        my jset changedDirection true
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $hashtable $ownerLayerInterface $gameInput
        my initFields_RandomPatrolAI
        my updateRandomDistance
    }
    

    method updateRandomDistance {} {
        my jset currentDistance [[::MyRandomFactory::getInstance] getAbsoluteNextInt [[my jget maxDistance] intValue]]
    }
    

    method processAI {allBinaryLayerManager} {
        next
        next [my jget keyDirection]
        if {[my jget changedDirection]} {
            next [::Canvas::staticGet_KEY_NUM1]
            my updateRandomDistance
            my jset changedDirection false
        }
    }
    

    method nextDirection {} {
        next
        my jset changedDirection true
    }
}

namespace eval ::RandomPatrolAI {
}


