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
# package org.allbinary.game.input

oo::class create ::GameInputStrings {
    superclass ::JObject
}

oo::define ::GameInputStrings {
    method initFields_GameInputStrings {} {
        my jset PROCESS_INPUT {}
        my jset KEY_PRESSED {}
        my jset KEY_RELEASED {}
        my jset KEY_REPEATED {}
        my jset ON_PRESS_GAME_KEY {}
        my jset ON_DOWN_GAME_KEY {}
        my jset ON_UP_GAME_KEY {}
        my jset NO_KEY {}
        my jset ADD_KEY_EVENT {}
        my jset REMOVE_KEY_EVENT {}
        my jset STRAFE_LEFT {}
        my jset STRAFE_RIGHT {}
        my jset PROCESS_MOTION_INPUT {}
        my jset UDPATE_CURRENT_TOUCH_INPUT_FACTORY {}
        my jset ENABLE_PLAYER_GAME_INPUTS {}
        my jset ENABLE_PLAYER_GAME_INPUT {}
        my jset PROCESS_INPUT "processInput"
        my jset KEY_PRESSED "keyPressed"
        my jset KEY_RELEASED "keyReleased"
        my jset KEY_REPEATED "keyRepeated"
        my jset ON_PRESS_GAME_KEY "onPressGameKeyEvent"
        my jset ON_DOWN_GAME_KEY "onDownGameKeyEvent"
        my jset ON_UP_GAME_KEY "onUpGameKeyEvent"
        my jset NO_KEY "Key Code Not Mapped For Game: "
        my jset ADD_KEY_EVENT "addGameKeyEvent"
        my jset REMOVE_KEY_EVENT "removeGameKeyEvent"
        my jset STRAFE_LEFT "strafeLeft"
        my jset STRAFE_RIGHT "strafeRight"
        my jset PROCESS_MOTION_INPUT "processMotionInput"
        my jset UDPATE_CURRENT_TOUCH_INPUT_FACTORY "updateCurrentTouchInputFactory"
        my jset ENABLE_PLAYER_GAME_INPUTS "Enabling PlayerGameInputs: "
        my jset ENABLE_PLAYER_GAME_INPUT "Enabling PlayerGameInput: "
        return
    }

    constructor {} {
        next
        my initFields_GameInputStrings
    }
    
}

namespace eval ::GameInputStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameInputStrings new]
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
        return [::GameInputStrings::staticGet_instance]
    }
}


