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

oo::class create ::NumberLayersSequenceAIFactory {
    superclass ::JObject
}

oo::define ::NumberLayersSequenceAIFactory {
    method initFields_NumberLayersSequenceAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_NumberLayersSequenceAIFactory
    }
    

    method getInstance {numberOfEnemiesLeft artificialIntelligenceInterface ownerLayerInterface gameInput} {
        return [::NumberLayersSequenceAI new $numberOfEnemiesLeft $artificialIntelligenceInterface $ownerLayerInterface $gameInput]
    }
}

namespace eval ::NumberLayersSequenceAIFactory {
}


