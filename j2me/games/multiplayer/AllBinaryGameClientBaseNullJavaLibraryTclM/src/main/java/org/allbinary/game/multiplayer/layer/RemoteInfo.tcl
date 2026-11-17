# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

oo::class create ::RemoteInfo {
    superclass ::JObject
}

oo::define ::RemoteInfo {
    method initFields_RemoteInfo {} {
        return
    }
    

    constructor {username actorSessionId playerInputId id} {
        next
        my initFields_RemoteInfo
    }
}

namespace eval ::RemoteInfo {
    variable NEW_PLAYER_IDValue {}
    variable NEW_PLAYER_IDSet 0
    proc staticGet_NEW_PLAYER_ID {} {
        variable NEW_PLAYER_IDValue
        variable NEW_PLAYER_IDSet
        if {!$NEW_PLAYER_IDSet} {
            set NEW_PLAYER_IDSet 1
            set NEW_PLAYER_IDValue 0
        }
        return $NEW_PLAYER_IDValue
    }
    proc staticSet_NEW_PLAYER_ID {value} {
        variable NEW_PLAYER_IDValue
        variable NEW_PLAYER_IDSet
        set NEW_PLAYER_IDSet 1
        set NEW_PLAYER_IDValue $value
    }
    variable REMOTE_INFOValue {}
    variable REMOTE_INFOSet 0
    proc staticGet_REMOTE_INFO {} {
        variable REMOTE_INFOValue
        variable REMOTE_INFOSet
        if {!$REMOTE_INFOSet} {
            set REMOTE_INFOSet 1
            set REMOTE_INFOValue [::RemoteInfo new [[::StringUtil::getInstance] jget EMPTY_STRING] [expr {-1}] [expr {-1}] [::RemoteInfo::staticGet_NEW_PLAYER_ID]]
        }
        return $REMOTE_INFOValue
    }
    proc staticSet_REMOTE_INFO {value} {
        variable REMOTE_INFOValue
        variable REMOTE_INFOSet
        set REMOTE_INFOSet 1
        set REMOTE_INFOValue $value
    }
}


