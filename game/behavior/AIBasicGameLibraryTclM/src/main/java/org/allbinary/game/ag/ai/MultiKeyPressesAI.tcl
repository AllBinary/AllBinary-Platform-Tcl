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
# package org.allbinary.game.ag.ai

oo::class create ::MultiKeyPressesAI {
    superclass ::KeyPressesAI
}

oo::define ::MultiKeyPressesAI {
    method initFields_MultiKeyPressesAI {} {
        my jset toggleTimeHelper {}
        my jset gameTickTimeDelayHelper {}
        my jset toggleTimeHelper [::TimeDelayHelper new 600]
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $hashtable $ownerLayerInterface $gameInput
        my initFields_MultiKeyPressesAI
        my update
    }
    

    method processAI {allBinaryLayerManager} {
    }
    

    method update {} {
        set gameInput [my getGameInput]
        set keys [my jget keys]
        set size [$keys length]
        if {[my isOn]} {
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set key [[$keys get $index] intValue]
                if {[expr {$key != [expr {-1}]}]} {
                    $gameInput add [[my jget gameKeyEventFactory] getInstanceForKey [self] $key]
                }
            }
        } else {
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set key [[$keys get $index] intValue]
                if {[expr {$key != [expr {-1}]}]} {
                    $gameInput addForRemoval [[my jget gameKeyEventFactory] getInstanceForKey [self] $key]
                }
            }
        }
    }
    

    method toggle {} {
        if {[[my jget toggleTimeHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
            next
            my update
        }
    }
    

    method disable {} {
        if {[[my jget toggleTimeHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
            next
            my update
        }
    }
    

    method enable {} {
        if {[[my jget toggleTimeHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
            next
            my update
        }
    }
}

namespace eval ::MultiKeyPressesAI {
}


