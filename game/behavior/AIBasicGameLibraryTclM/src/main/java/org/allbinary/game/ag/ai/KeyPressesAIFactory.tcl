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

oo::class create ::KeyPressesAIFactory {
    superclass ::JObject
}

oo::define ::KeyPressesAIFactory {
    method initFields_KeyPressesAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_KeyPressesAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set isSingleKeyProcessing [[::InputFeatureFactory::getInstance] isSingleKeyProcessing]
        if {$isSingleKeyProcessing} {
            return [::KeyPressesAI new $hashtable $ownerLayerInterface $gameInput]
        } else {
            return [::MultiKeyPressesAI new $hashtable $ownerLayerInterface $gameInput]
        }
    }
}

namespace eval ::KeyPressesAIFactory {
}


