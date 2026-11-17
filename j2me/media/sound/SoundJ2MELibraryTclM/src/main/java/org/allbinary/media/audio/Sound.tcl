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
# package org.allbinary.media.audio

oo::class create ::Sound {
    superclass ::JObject
}

oo::define ::Sound {
    method initFields_Sound {} {
        my jset resource {}
        my jset player {}
        
        my jset player [::NoPlayer::staticGet_NO_PLAYER]
        return
    }
    

    constructor {resource} {
        next
        my initFields_Sound
        my jset resource $resource
    }
    

    method getResource {} {
        return [my jget resource]
    }
    

    method getPlayerP {} {
        return [my jget player]
    }
    

    method setPlayerP {player} {
        my jset player $player
    }
    

    method init {} {
    }
    

    method getDuration {} {
        return [expr {-1}]
    }
    

    method run {} {
        try {
            [my jget player] start
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN]
        }
    }
}

namespace eval ::Sound {
}


