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

oo::class create ::GameKeyMappingFactory {
    superclass ::JObject
}

oo::define ::GameKeyMappingFactory {
    method initFields_GameKeyMappingFactory {} {
        my jset intKeyToGameKey {}
        my jset intKeyToGameKey [jarray [[::InputFactory::getInstance] jget MAX] {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameKeyMappingFactory
        set gameKeyFactory [::GameKeyFactory::getInstance]
        my setGameKey [$gameKeyFactory jget NONE]
        my setGameKey [$gameKeyFactory jget UP]
        my setGameKey [$gameKeyFactory jget DOWN]
        my setGameKey [$gameKeyFactory jget LEFT]
        my setGameKey [$gameKeyFactory jget RIGHT]
        my setGameKey [$gameKeyFactory jget KEY_POUND]
        my setGameKey [$gameKeyFactory jget KEY_STAR]
        my setGameKey [$gameKeyFactory jget KEY_NUM0]
        my setGameKey [$gameKeyFactory jget KEY_NUM1]
        my setGameKey [$gameKeyFactory jget KEY_NUM2]
        my setGameKey [$gameKeyFactory jget KEY_NUM3]
        my setGameKey [$gameKeyFactory jget KEY_NUM4]
        my setGameKey [$gameKeyFactory jget KEY_NUM5]
        my setGameKey [$gameKeyFactory jget KEY_NUM6]
        my setGameKey [$gameKeyFactory jget KEY_NUM7]
        my setGameKey [$gameKeyFactory jget KEY_NUM8]
        my setGameKey [$gameKeyFactory jget KEY_NUM9]
        my setGameKey [$gameKeyFactory jget GAME_A]
        my setGameKey [$gameKeyFactory jget GAME_B]
        my setGameKey [$gameKeyFactory jget GAME_C]
        my setGameKey [$gameKeyFactory jget GAME_D]
        my setGameKey [$gameKeyFactory jget FIRE]
        my setGameKey [$gameKeyFactory jget LEVEL_DOWN]
        my setGameKey [$gameKeyFactory jget LEVEL_UP]
    }
    

    method getGameKey {key} {
        return [[my jget intKeyToGameKey] get $key]
    }
    

    method setGameKey {gameKey} {
        [my jget intKeyToGameKey] set [$gameKey getId] $gameKey
    }
}

namespace eval ::GameKeyMappingFactory {
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
        if {[expr {[::GameKeyMappingFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameKeyMappingFactory::staticSet_instance [::GameKeyMappingFactory new]
        }
        return [::GameKeyMappingFactory::staticGet_instance]
    }
}


