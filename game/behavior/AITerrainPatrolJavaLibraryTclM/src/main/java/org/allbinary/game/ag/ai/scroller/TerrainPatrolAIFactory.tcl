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

oo::class create ::TerrainPatrolAIFactory {
    superclass ::JObject
}

oo::define ::TerrainPatrolAIFactory {
    method initFields_TerrainPatrolAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_TerrainPatrolAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        $hashtable put [::BasePatrolAI::staticGet_MAX_DISTANCE] [[::SmallIntegerSingletonFactory::getInstance] getAt 220]
        return [::TerrainPatrolAI new $hashtable $ownerLayerInterface $gameInput]
    }
}

namespace eval ::TerrainPatrolAIFactory {
}


