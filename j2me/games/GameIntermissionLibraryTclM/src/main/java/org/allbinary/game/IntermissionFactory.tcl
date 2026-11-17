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
# package org.allbinary.game

oo::class create ::IntermissionFactory {
    superclass ::JObject
}

oo::define ::IntermissionFactory {
    method initFields_IntermissionFactory {} {
        my jset START_LEVEL_INTERMISSION_GAME_STATE {}
        my jset WAIT_LEVEL_INTERMISSION_GAME_STATE {}
        my jset SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE {}
        my jset SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE {}
        my jset START_LEVEL_INTERMISSION_GAME_STATE [[::GameStateFactory::getInstance] createGameState "START_LEVEL_INTERMISSION_GAME_STATE"]
        my jset WAIT_LEVEL_INTERMISSION_GAME_STATE [[::GameStateFactory::getInstance] createGameState "WAIT_LEVEL_INTERMISSION_GAME_STATE"]
        my jset SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE [[::GameStateFactory::getInstance] createGameState "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"]
        my jset SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE [[::GameStateFactory::getInstance] createGameState "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"]
        return
    }

    constructor {} {
        next
        my initFields_IntermissionFactory
    }
    
}

namespace eval ::IntermissionFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::IntermissionFactory new]
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
        return [::IntermissionFactory::staticGet_instance]
    }
}


