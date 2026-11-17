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

oo::class create ::GameTypeFactory {
    superclass ::JObject
}

oo::define ::GameTypeFactory {
    method initFields_GameTypeFactory {} {
        my jset NULL_GAME_TYPE_ARRAY {}
        my jset NONE {}
        my jset SINGLE_PLAYER {}
        my jset MULTI_PLAYER {}
        my jset BOT {}
        my jset NULL_GAME_TYPE_ARRAY [jarray 0 {}]
        my jset NONE [::GameType new [[::StringUtil::getInstance] jget NULL_STRING]]
        my jset SINGLE_PLAYER [::GameType new "Single Player"]
        my jset MULTI_PLAYER [::GameType new "Multi Player"]
        my jset BOT [::GameType new "Artificial Player"]
        return
    }

    constructor {} {
        next
        my initFields_GameTypeFactory
    }
    
}

namespace eval ::GameTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameTypeFactory new]
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
        return [::GameTypeFactory::staticGet_instance]
    }
}


