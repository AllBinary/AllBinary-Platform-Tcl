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

oo::class create ::HorizontalManeuverAIFactory {
    superclass ::JObject
}

oo::define ::HorizontalManeuverAIFactory {
    method initFields_HorizontalManeuverAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_HorizontalManeuverAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        return [::HorizontalManeuverAI new $ownerLayerInterface $gameInput]
    }
}

namespace eval ::HorizontalManeuverAIFactory {
}


