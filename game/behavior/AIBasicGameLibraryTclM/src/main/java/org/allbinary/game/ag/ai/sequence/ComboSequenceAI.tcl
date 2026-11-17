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

oo::class create ::ComboSequenceAI {
    superclass ::SequenceAI
}

oo::define ::ComboSequenceAI {
    method initFields_ComboSequenceAI {} {
        return
    }
    

    constructor {artificialIntelligenceInterface ownerLayerInterface gameInput} {
        next $artificialIntelligenceInterface $ownerLayerInterface $gameInput
        my initFields_ComboSequenceAI
    }
    

    method processAI {allBinaryLayerManager} {
        set artificialIntelligenceInterfaceArray [my getArtificialIntelligenceInterface]
        set size [$artificialIntelligenceInterfaceArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            my setIndex $index
            next $allBinaryLayerManager
        }
    }
}

namespace eval ::ComboSequenceAI {
}


