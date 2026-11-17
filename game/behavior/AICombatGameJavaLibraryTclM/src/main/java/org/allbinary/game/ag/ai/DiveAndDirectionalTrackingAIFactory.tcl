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

oo::class create ::DiveAndDirectionalTrackingAIFactory {
    superclass ::JObject
}

oo::define ::DiveAndDirectionalTrackingAIFactory {
    method initFields_DiveAndDirectionalTrackingAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_DiveAndDirectionalTrackingAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set visitorCanBeNull [$hashtable get [::BasicAI::staticGet_AI_VISITOR]]
        if {[expr {$visitorCanBeNull eq {}}]} {
            set visitorCanBeNull [::ThrustAIVisitorFactory::getInstance]
        }
        set hashtable2 [[::BasicProbabilityAIDataFactory new] getInstance]
        $hashtable2 put [::BasicAI::staticGet_AI_VISITOR] [::LastKeyAIVisitorFactory::getInstance]
        set artificialIntelligenceInterface [[::BasicRandomAIFactory new] getInstance $hashtable2 $ownerLayerInterface $gameInput]
        return [::DiveAndDirectionalTrackingAI new $ownerLayerInterface $artificialIntelligenceInterface $gameInput $visitorCanBeNull]
    }
}

namespace eval ::DiveAndDirectionalTrackingAIFactory {
}


