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

oo::class create ::NullAIFactory {
    superclass ::JObject
}

oo::define ::NullAIFactory {
    method initFields_NullAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_NullAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        return [::NullAIFactory::staticGet_NULL_AI]
    }
    
}

namespace eval ::NullAIFactory {
    variable NULL_AIValue {}
    variable NULL_AISet 0
    proc staticGet_NULL_AI {} {
        variable NULL_AIValue
        variable NULL_AISet
        if {!$NULL_AISet} {
            set NULL_AISet 1
            set NULL_AIValue [::NullAI new]
        }
        return $NULL_AIValue
    }
    proc staticSet_NULL_AI {value} {
        variable NULL_AIValue
        variable NULL_AISet
        set NULL_AISet 1
        set NULL_AIValue $value
    }
    proc getInstance {} {
        return [::NullAIFactory::staticGet_NULL_AI]
    }
}


