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

oo::class create ::NumberInSameGroupSequence {
    superclass ::JObject
}

oo::define ::NumberInSameGroupSequence {
    method initFields_NumberInSameGroupSequence {} {
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_ONE {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_TWO {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_THREE {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_SIX {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_NINE {}
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE {}
        
        
        
        
        
        
        
        
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_NumberInSameGroupSequence
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO [$smallIntegerSingletonFactory getAt 100]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_ONE [$smallIntegerSingletonFactory getAt 101]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_TWO [$smallIntegerSingletonFactory getAt 102]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_THREE [$smallIntegerSingletonFactory getAt 103]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR [$smallIntegerSingletonFactory getAt 104]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE [$smallIntegerSingletonFactory getAt 105]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_SIX [$smallIntegerSingletonFactory getAt 106]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN [$smallIntegerSingletonFactory getAt 107]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT [$smallIntegerSingletonFactory getAt 108]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE_NINE [$smallIntegerSingletonFactory getAt 109]
        my jset NUMBER_ON_SAME_TEAM_SEQUENCE [jarrayfrom [list [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_ONE] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_THREE] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_SIX] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT] [my jget NUMBER_ON_SAME_TEAM_SEQUENCE_NINE]]]
    }
}

namespace eval ::NumberInSameGroupSequence {
    proc getInstance {} {
        return [::NumberInSameGroupSequence new]
    }
}


