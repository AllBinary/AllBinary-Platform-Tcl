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
# package org.allbinary.ai

oo::class create ::ArtificialIntelligence {
    superclass ::JObject
}

oo::define ::ArtificialIntelligence {
    method initFields_ArtificialIntelligence {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ArtificialIntelligence
    }
    

    method processAI {layerManager} {
    }
    

    method getId {} {
        return 1
    }
}

namespace eval ::ArtificialIntelligence {
    variable AI_IDValue {}
    variable AI_IDSet 0
    proc staticGet_AI_ID {} {
        variable AI_IDValue
        variable AI_IDSet
        if {!$AI_IDSet} {
            set AI_IDSet 1
            set AI_IDValue 2
        }
        return $AI_IDValue
    }
    proc staticSet_AI_ID {value} {
        variable AI_IDValue
        variable AI_IDSet
        set AI_IDSet 1
        set AI_IDValue $value
    }
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ArtificialIntelligence new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::ArtificialIntelligence::staticGet_instance]
    }
}


