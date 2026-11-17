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

oo::class create ::RandomPatrolAIFactory {
    superclass ::JObject
}

oo::define ::RandomPatrolAIFactory {
    method initFields_RandomPatrolAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_RandomPatrolAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        return [::RandomPatrolAI new $hashtable $ownerLayerInterface $gameInput]
    }
}

namespace eval ::RandomPatrolAIFactory {
}


