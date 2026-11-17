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

#BasicPlayer
oo::class create ::PlayerComposite {
    superclass ::JObject
}

oo::define ::PlayerComposite {
    method initFields_PlayerComposite {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset player {}
        my jset timeElapsedHelper {}
        my jset gameTickTimeDelayHelper {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        my jset timeElapsedHelper [::TimeDelayHelper new 0]
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        return
    }
    

    constructor {player repeatTime} {
        next
        my initFields_PlayerComposite
        my jset player $player
        [my jget timeElapsedHelper] jset delay $repeatTime
    }
    

    method addPlayerListener {playerListener} {
        [my jget player] addPlayerListener $playerListener
    }
    

    method removePlayerListener {playerListener} {
        [my jget player] removePlayerListener $playerListener
    }
    

    method close {} {
        [my jget player] close
    }
    

    method deallocate {} {
        [my jget player] deallocate
    }
    

    method getContentType {} {
        return [[my jget player] getContentType]
    }
    

    method getDuration {} {
        return [[my jget player] getDuration]
    }
    

    method getMediaTime {} {
        return [[my jget player] getMediaTime]
    }
    

    method prefetch {} {
        try {
            [my jget player] prefetch
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "prefetch" $e
        }
    }
    

    method realize {} {
        try {
            [my jget player] realize
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "realize" $e
        }
    }
    

    method getState {} {
        return [[my jget player] getState]
    }
    

    method setLoopCount {count} {
        [my jget player] setLoopCount $count
    }
    

    method setMediaTime {now} {
        try {
            return [[my jget player] setMediaTime $now]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "setMediaTime" $e
            return [expr {-1}]
        }
    }
    

    method start {} {
        try {
            if {[[my jget timeElapsedHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
                [my jget player] start
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget START_METHOD_NAME] $e
        }
    }
    

    method stop {} {
        try {
            [my jget player] stop
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "stop" $e
        }
    }
    

    method getControl {controlType} {
        return [[my jget player] getControl $controlType]
    }
    

    method getControls {} {
        error [jexception RuntimeException {}]
    }
    

    method setVolume {leftVolume rightVolume} {
        set controllable2 ([my jget player])
        $controllable2 setVolume $leftVolume $rightVolume
    }
    

    method getPlayerP {} {
        return [my jget player]
    }
}

namespace eval ::PlayerComposite {
}


