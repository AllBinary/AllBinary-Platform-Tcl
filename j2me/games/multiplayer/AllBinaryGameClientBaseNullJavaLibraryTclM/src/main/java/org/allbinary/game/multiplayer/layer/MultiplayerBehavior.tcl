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
# package org.allbinary.game.multiplayer.layer

oo::class create ::MultiplayerBehavior {
    superclass ::JObject
}

oo::define ::MultiplayerBehavior {
    method initFields_MultiplayerBehavior {} {
        return
    }
    

    constructor {username} {
        next
        my initFields_MultiplayerBehavior
    }
    

    method startTick {} {
    }
    

    method endTick {} {
    }
    

    method getApproximateElapsed {} {
        return 0
    }
}

namespace eval ::MultiplayerBehavior {
    variable NULL_MULTIPLAYER_BEHAVIORValue {}
    variable NULL_MULTIPLAYER_BEHAVIORSet 0
    proc staticGet_NULL_MULTIPLAYER_BEHAVIOR {} {
        variable NULL_MULTIPLAYER_BEHAVIORValue
        variable NULL_MULTIPLAYER_BEHAVIORSet
        if {!$NULL_MULTIPLAYER_BEHAVIORSet} {
            set NULL_MULTIPLAYER_BEHAVIORSet 1
            set NULL_MULTIPLAYER_BEHAVIORValue [::MultiplayerBehavior new [[::StringUtil::getInstance] jget EMPTY_STRING]]
        }
        return $NULL_MULTIPLAYER_BEHAVIORValue
    }
    proc staticSet_NULL_MULTIPLAYER_BEHAVIOR {value} {
        variable NULL_MULTIPLAYER_BEHAVIORValue
        variable NULL_MULTIPLAYER_BEHAVIORSet
        set NULL_MULTIPLAYER_BEHAVIORSet 1
        set NULL_MULTIPLAYER_BEHAVIORValue $value
    }
}


