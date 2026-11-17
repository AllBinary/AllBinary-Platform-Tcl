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

oo::class create ::RandomPatrolFlockingFiringAIFactory {
    superclass ::JObject
}

oo::define ::RandomPatrolFlockingFiringAIFactory {
    method initFields_RandomPatrolFlockingFiringAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_RandomPatrolFlockingFiringAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set artificialIntelligenceInterface [jarray 2 {}]
        $artificialIntelligenceInterface set 0 [::RandomPatrolAI new $hashtable $ownerLayerInterface $gameInput]
        $artificialIntelligenceInterface set 1 [::TimedFireAI new 1800 $ownerLayerInterface $gameInput]
        return [::ArrayAI new $artificialIntelligenceInterface $ownerLayerInterface $gameInput]
    }
}

namespace eval ::RandomPatrolFlockingFiringAIFactory {
}


