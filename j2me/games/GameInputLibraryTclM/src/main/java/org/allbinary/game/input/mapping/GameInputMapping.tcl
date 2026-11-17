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
# package org.allbinary.game.input.mapping

oo::class create ::GameInputMapping {
    superclass ::JObject
}

oo::define ::GameInputMapping {
    method initFields_GameInputMapping {} {
        my jset name {}
        my jset gameKey {}
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset gameKey [::GameKey::staticGet_NULL_GAME_KEY]
        return
    }
    

    constructor {name gameKey} {
        next
        my initFields_GameInputMapping
        my setName $name
        my setGameKey $gameKey
    }
    

    method setGameKey {gameKey} {
        my jset gameKey $gameKey
    }
    

    method getGameKey {} {
        return [my jget gameKey]
    }
    

    method setName {name} {
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::GameInputMapping {
}


