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

#BasicPlayerMIDP2JavaLibrary
oo::class create ::BasicPlayer {
    superclass ::JObject
}

oo::define ::BasicPlayer {
    method initFields_BasicPlayer {} {
        my jset listenersList {}
        my jset timeBase {}
        my jset stateP 0
        my jset loopCountP 0
        my jset listenersList [::BasicArrayListD new]
        my jset timeBase {}
        my jset stateP 0
        my jset loopCountP 0
        return
    }
    

    constructor {} {
        next
        my initFields_BasicPlayer
        my setLoopCount 0
        my setState [::Player::staticGet_UNREALIZED]
    }
    

    method getContentType {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method getControl {controlType} {
        return [::NullControl new]
    }
    

    method getControls {} {
        return [jarray 0 {}]
    }
    

    method close {} {
    }
    

    method addPlayerListener {playerListener} {
        if {[expr {![[my jget listenersList] contains $playerListener]}]} {
            [my jget listenersList] add $playerListener
        }
    }
    

    method removePlayerListener {playerListener} {
        [my jget listenersList] remove $playerListener
    }
    

    method getState {} {
        return [my jget stateP]
    }
    

    method setState {state} {
        my jset stateP $state
    }
    

    method getDuration {} {
        return 0
    }
    

    method getMediaTime {} {
        return 0
    }
    

    method getTimeBase {} {
        return [my jget timeBase]
    }
    

    method setTimeBase {timeBase} {
        my jset timeBase $timeBase
    }
    

    method deallocate {} {
    }
    

    method prefetch {} {
    }
    

    method realize {} {
    }
    

    method setLoopCount {count} {
        my jset loopCountP $count
    }
    

    method getLoopCount {} {
        return [my jget loopCountP]
    }
    

    method setMediaTime {now} {
        return 0
    }
    

    method start {} {
        my setState [::Player::staticGet_STARTED]
    }
    

    method stop {} {
        my setState [::Player::staticGet_PREFETCHED]
    }
    

    method setVolume {leftVolume rightVolume} {
    }
}

namespace eval ::BasicPlayer {
    variable CONTROL_TYPEValue {}
    variable CONTROL_TYPESet 0
    proc staticGet_CONTROL_TYPE {} {
        variable CONTROL_TYPEValue
        variable CONTROL_TYPESet
        if {!$CONTROL_TYPESet} {
            set CONTROL_TYPESet 1
            set CONTROL_TYPEValue "ToneControl"
        }
        return $CONTROL_TYPEValue
    }
    proc staticSet_CONTROL_TYPE {value} {
        variable CONTROL_TYPEValue
        variable CONTROL_TYPESet
        set CONTROL_TYPESet 1
        set CONTROL_TYPEValue $value
    }
}


