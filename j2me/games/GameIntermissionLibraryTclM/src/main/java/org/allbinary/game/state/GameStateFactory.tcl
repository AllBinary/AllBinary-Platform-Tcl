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
# package org.allbinary.game.state

oo::class create ::GameStateFactory {
    superclass ::JObject
}

oo::define ::GameStateFactory {
    method initFields_GameStateFactory {} {
        my jset index 0
        my jset NO_GAME_STATE {}
        my jset PLAYING_GAME_STATE {}
        my jset SHOW_END_RESULT_GAME_STATE {}
        my jset SHOW_HIGH_SCORE_GAME_STATE {}
        my jset index 0
        my jset NO_GAME_STATE [my createGameState "NO_GAME_STATE"]
        my jset PLAYING_GAME_STATE [my createGameState "PLAYING_GAME_STATE"]
        my jset SHOW_END_RESULT_GAME_STATE [my createGameState "SHOW_END_RESULT_GAME_STATE"]
        my jset SHOW_HIGH_SCORE_GAME_STATE [my createGameState "SHOW_HIGH_SCORE_GAME_STATE"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameStateFactory
    }
    

    method createGameState {name} {
        return [::GameState new $name [my jpostinc index 1]]
    }
}

namespace eval ::GameStateFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::GameStateFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameStateFactory::staticSet_instance [::GameStateFactory new]
        }
        return [::GameStateFactory::staticGet_instance]
    }
}


