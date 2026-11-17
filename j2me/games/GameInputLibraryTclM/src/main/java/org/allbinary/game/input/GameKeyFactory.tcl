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

oo::class create ::GameKeyFactory {
    superclass ::JObject
}

oo::define ::GameKeyFactory {
    method initFields_GameKeyFactory {} {
        my jset NONE {}
        my jset UP {}
        my jset DOWN {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset KEY_POUND {}
        my jset KEY_STAR {}
        my jset KEY_NUM0 {}
        my jset KEY_NUM1 {}
        my jset KEY_NUM2 {}
        my jset KEY_NUM3 {}
        my jset KEY_NUM4 {}
        my jset KEY_NUM5 {}
        my jset KEY_NUM6 {}
        my jset KEY_NUM7 {}
        my jset KEY_NUM8 {}
        my jset KEY_NUM9 {}
        my jset GAME_A {}
        my jset GAME_B {}
        my jset GAME_C {}
        my jset GAME_D {}
        my jset FIRE {}
        my jset LEVEL_DOWN {}
        my jset LEVEL_UP {}
        my jset NONE [::GameKey new [expr {[[::InputFactory::getInstance] jget MAX] - 1}] "None"]
        my jset UP [::GameKey new [::Canvas::staticGet_UP] [[::CommonPhoneStrings::getInstance] jget UP]]
        my jset DOWN [::GameKey new [::Canvas::staticGet_DOWN] [[::CommonPhoneStrings::getInstance] jget DOWN]]
        my jset LEFT [::GameKey new [::Canvas::staticGet_LEFT] [[::CommonPhoneStrings::getInstance] jget LEFT]]
        my jset RIGHT [::GameKey new [::Canvas::staticGet_RIGHT] [[::CommonPhoneStrings::getInstance] jget RIGHT]]
        my jset KEY_POUND [::GameKey new [::Canvas::staticGet_KEY_POUND] "POUND"]
        my jset KEY_STAR [::GameKey new [::Canvas::staticGet_KEY_STAR] "STAR"]
        my jset KEY_NUM0 [::GameKey new [::Canvas::staticGet_KEY_NUM0] [[::CommonPhoneStrings::getInstance] jget ZERO]]
        my jset KEY_NUM1 [::GameKey new [::Canvas::staticGet_KEY_NUM1] [[::CommonPhoneStrings::getInstance] jget ONE]]
        my jset KEY_NUM2 [::GameKey new [::Canvas::staticGet_KEY_NUM2] [[::CommonPhoneStrings::getInstance] jget TWO]]
        my jset KEY_NUM3 [::GameKey new [::Canvas::staticGet_KEY_NUM3] [[::CommonPhoneStrings::getInstance] jget THREE]]
        my jset KEY_NUM4 [::GameKey new [::Canvas::staticGet_KEY_NUM4] [[::CommonPhoneStrings::getInstance] jget FOUR]]
        my jset KEY_NUM5 [::GameKey new [::Canvas::staticGet_KEY_NUM5] [[::CommonPhoneStrings::getInstance] jget FIVE]]
        my jset KEY_NUM6 [::GameKey new [::Canvas::staticGet_KEY_NUM6] [[::CommonPhoneStrings::getInstance] jget SIX]]
        my jset KEY_NUM7 [::GameKey new [::Canvas::staticGet_KEY_NUM7] [[::CommonPhoneStrings::getInstance] jget SEVEN]]
        my jset KEY_NUM8 [::GameKey new [::Canvas::staticGet_KEY_NUM8] [[::CommonPhoneStrings::getInstance] jget EIGHT]]
        my jset KEY_NUM9 [::GameKey new [::Canvas::staticGet_KEY_NUM9] [[::CommonPhoneStrings::getInstance] jget NINE]]
        my jset GAME_A [::GameKey new [::Canvas::staticGet_GAME_A] "Game A"]
        my jset GAME_B [::GameKey new [::Canvas::staticGet_GAME_B] "Game B"]
        my jset GAME_C [::GameKey new [::Canvas::staticGet_GAME_C] "Game C"]
        my jset GAME_D [::GameKey new [::Canvas::staticGet_GAME_D] "Game D"]
        my jset FIRE [::GameKey new [::Canvas::staticGet_FIRE] [[::CommonPhoneStrings::getInstance] jget FIRE]]
        my jset LEVEL_DOWN [::GameKey new [expr {[::Canvas::staticGet_KEY_NUM9] + 1}] "Cheat Level Up"]
        my jset LEVEL_UP [::GameKey new [expr {[::Canvas::staticGet_KEY_NUM9] + 2}] "Cheat Level Down"]
        return
    }

    constructor {} {
        next
        my initFields_GameKeyFactory
    }
    
}

namespace eval ::GameKeyFactory {
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
        if {[expr {[::GameKeyFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameKeyFactory::staticSet_instance [::GameKeyFactory new]
        }
        return [::GameKeyFactory::staticGet_instance]
    }
}


