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

oo::class create ::SequenceAI {
    superclass ::ArrayAI
}

oo::define ::SequenceAI {
    method initFields_SequenceAI {} {
        my jset index 0
        my jset index 0
        return
    }
    

    constructor {artificialIntelligenceInterfaceArray ownerLayerInterface gameInput} {
        next $artificialIntelligenceInterfaceArray $ownerLayerInterface $gameInput
        my initFields_SequenceAI
    }
    

    method processAI {allBinaryLayerManager} {
        [[my getArtificialIntelligenceInterface] get [my jget index]] processAI $allBinaryLayerManager
    }
    

    method next {} {
        my jpostinc index 1
        set artificialIntelligenceInterface [my getSelectedArtificialIntelligenceInterface]
        if {[expr {[$artificialIntelligenceInterface getId] == [::ArtificialIntelligence::staticGet_AI_ID]}]} {
            set artificialIntelligenceTransitionInterface $artificialIntelligenceInterface
            $artificialIntelligenceTransitionInterface transition
        }
    }
    

    method getIndex {} {
        return [my jget index]
    }
    

    method setIndex {index} {
        my jset index $index
    }
    

    method getSelectedArtificialIntelligenceInterface {} {
        return [[my getArtificialIntelligenceInterface] get [my jget index]]
    }
    

    method getName {} {
        return [::SequenceAI::staticGet_SEQUENCE_AI]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [next]
        $stringBuffer append " Selected AI: "
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my getSelectedArtificialIntelligenceInterface]]
        return [$stringBuffer toString]
    }
}

namespace eval ::SequenceAI {
    variable SEQUENCE_AIValue {}
    variable SEQUENCE_AISet 0
    proc staticGet_SEQUENCE_AI {} {
        variable SEQUENCE_AIValue
        variable SEQUENCE_AISet
        if {!$SEQUENCE_AISet} {
            set SEQUENCE_AISet 1
            set SEQUENCE_AIValue "Sequence AI"
        }
        return $SEQUENCE_AIValue
    }
    proc staticSet_SEQUENCE_AI {value} {
        variable SEQUENCE_AIValue
        variable SEQUENCE_AISet
        set SEQUENCE_AISet 1
        set SEQUENCE_AIValue $value
    }
}


