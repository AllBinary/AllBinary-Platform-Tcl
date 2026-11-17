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
# package org.allbinary.game.ag.ai

oo::class create ::NumberOnOwnGroupSequenceAI {
    superclass ::SequenceAI
}

oo::define ::NumberOnOwnGroupSequenceAI {
    method initFields_NumberOnOwnGroupSequenceAI {} {
        my jset numberOnSameTeam {}
        
        return
    }
    

    constructor {numberOnSameTeam artificialIntelligenceInterface ownerLayerInterface gameInput} {
        next $artificialIntelligenceInterface $ownerLayerInterface $gameInput
        my initFields_NumberOnOwnGroupSequenceAI
        my jset numberOnSameTeam $numberOnSameTeam
    }
    

    method processAI {allBinaryLayerManager} {
        set layerInterface [my getOwnerLayerInterface]
        set index [my getIndex]
        if {[expr {[[my jget numberOnSameTeam] length] > $index}]} {
            set size [[::GroupLayerManagerListener::getInstance] getGroupSizeFromInterface $layerInterface]
            if {[expr {[[[my jget numberOnSameTeam] get $index] intValue] > $size}]} {
                my next
            }
        }
        next $allBinaryLayerManager
    }
}

namespace eval ::NumberOnOwnGroupSequenceAI {
}


