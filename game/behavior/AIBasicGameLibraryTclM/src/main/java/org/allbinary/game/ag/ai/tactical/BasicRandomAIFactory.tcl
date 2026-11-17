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
# package org.allbinary.game.ag.ai.tactical

oo::class create ::BasicRandomAIFactory {
    superclass ::JObject
}

oo::define ::BasicRandomAIFactory {
    method initFields_BasicRandomAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_BasicRandomAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set visitor [$hashtable get [::BasicAI::staticGet_AI_VISITOR]]
        if {[expr {$visitor eq {}}]} {
            error [jexception Exception "No Visitor Provided"]
        }
        set inputProbability [$hashtable get [::InputProbability::staticGet_INPUT_PROBABILITY]]
        return [::BasicRandomAI new $ownerLayerInterface $gameInput $inputProbability $visitor]
    }
}

namespace eval ::BasicRandomAIFactory {
}


