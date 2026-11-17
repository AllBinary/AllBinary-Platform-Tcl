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
# package org.allbinary.game.ag.ai.tactical

oo::class create ::BasicRandomAI {
    superclass ::BasicAI
}

oo::define ::BasicRandomAI {
    method initFields_BasicRandomAI {} {
        my jset i_random 0
        my jset inputProbability {}
        my jset visitor {}
        my jset keyArray {}
        my jset myRandomFactory {}
        my jset i_random 0
        
        
        my jset keyArray [jarrayfrom [list [::Canvas::staticGet_UP] [::Canvas::staticGet_DOWN] [::Canvas::staticGet_LEFT] [::Canvas::staticGet_RIGHT] [::Canvas::staticGet_KEY_NUM1] [::Canvas::staticGet_KEY_NUM7] [::Canvas::staticGet_KEY_NUM9]]]
        my jset myRandomFactory [::MyRandomFactory::getInstance]
        return
    }
    

    constructor {ownerLayerInterface gameInput inputProbability visitor} {
        next $ownerLayerInterface $gameInput
        my initFields_BasicRandomAI
        my jset inputProbability $inputProbability
        my jset visitor $visitor
    }
    

    method processAI {allBinaryLayerManager} {
        if {[[[my jget inputProbability] getTimeDelayHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            my jset i_random [[my jget myRandomFactory] getAbsoluteNextInt [[my jget inputProbability] getMax]]
            set repeat false
            set repeatLikelyhoodIntegerArray [[my jget inputProbability] getRepeatLikelyhoodIntegerArray]
            if {[expr {[expr {[my getLastKey] != [expr {-1}]}] && [expr {[[$repeatLikelyhoodIntegerArray get [my getLastKey]] intValue] >= [my jget i_random]}]}]} {
                set repeat true
            }
            if {[expr {!$repeat}]} {
                set likelyhoodIntegerArray [[my jget inputProbability] getLikelyhoodIntegerArray]
                my jset i_random [[my jget myRandomFactory] getAbsoluteNextInt [[my jget inputProbability] getMax]]
                set size [[my jget keyArray] length]
                set likelyhoodIntegerKeyArray {}
                for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                    set key [[my jget keyArray] get $index]
                    set likelyhoodIntegerKeyArray [$likelyhoodIntegerArray get $key]
                    if {[expr {[expr {[$likelyhoodIntegerArray length] >= $key}] && [expr {[$likelyhoodIntegerKeyArray get 0] ne {}}]}]} {
                        if {[expr {[expr {[my jget i_random] >= [[$likelyhoodIntegerKeyArray get 0] intValue]}] && [expr {[my jget i_random] < [[$likelyhoodIntegerKeyArray get 1] intValue]}]}]} {
                            my setLastKey $key
                            break
                        }
                    }
                }
            }
            [my jget visitor] visit [self]
        }
    }
}

namespace eval ::BasicRandomAI {
}


