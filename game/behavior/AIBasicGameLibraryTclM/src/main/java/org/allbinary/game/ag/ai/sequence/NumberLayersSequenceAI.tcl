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
# package org.allbinary.game.ag.ai.sequence

oo::class create ::NumberLayersSequenceAI {
    superclass ::SequenceAI
}

oo::define ::NumberLayersSequenceAI {
    method initFields_NumberLayersSequenceAI {} {
        my jset numberOfLayersLeft 0
        
        return
    }
    

    constructor {numberOfEnemiesLeft artificialIntelligenceInterface ownerLayerInterface gameInput} {
        next $artificialIntelligenceInterface $ownerLayerInterface $gameInput
        my initFields_NumberLayersSequenceAI
        my jset numberOfLayersLeft $numberOfEnemiesLeft
    }
    

    method processAI {allBinaryLayerManager} {
        if {[expr {[my getIndex] == 0}]} {
            if {[expr {[$allBinaryLayerManager getSize] < [my jget numberOfLayersLeft]}]} {
                my setIndex 1
            }
        }
        next $allBinaryLayerManager
    }
}

namespace eval ::NumberLayersSequenceAI {
}


