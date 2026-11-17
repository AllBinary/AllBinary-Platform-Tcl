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

oo::class create ::SpinnerAIFactory {
    superclass ::JObject
}

oo::define ::SpinnerAIFactory {
    method initFields_SpinnerAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_SpinnerAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set direction [jarrayfrom [list [::Canvas::staticGet_LEFT]]]
        return [::SpinnerAI new $direction $ownerLayerInterface $gameInput]
    }
}

namespace eval ::SpinnerAIFactory {
}


