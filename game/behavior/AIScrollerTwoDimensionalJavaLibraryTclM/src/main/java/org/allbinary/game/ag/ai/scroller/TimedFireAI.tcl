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
# package org.allbinary.game.ag.ai.scroller

oo::class create ::TimedFireAI {
    superclass ::BasicAI
}

oo::define ::TimedFireAI {
    method initFields_TimedFireAI {} {
        my jset maxFireDelayTimeHelper {}
        my jset delay 0
        my jset maxFireDelayTimeHelper [::TimeDelayHelper new 0]
        
        return
    }
    

    constructor {delay ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_TimedFireAI
        my jset delay $delay
    }
    

    method processAI {allBinaryLayerManager} {
        set timeFiredInterface [my getOwnerLayerInterface]
        if {[expr {[[my jget maxFireDelayTimeHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]] && [expr {[expr {[$timeFiredInterface getLastFireTime] + [[my jget maxFireDelayTimeHelper] jget delay]}] < [[my jget maxFireDelayTimeHelper] getStartTime]}]}]} {
            next [::Canvas::staticGet_KEY_NUM1]
            [my jget maxFireDelayTimeHelper] jset delay [my jget delay]
        }
    }
}

namespace eval ::TimedFireAI {
    variable TIMEValue {}
    variable TIMESet 0
    proc staticGet_TIME {} {
        variable TIMEValue
        variable TIMESet
        if {!$TIMESet} {
            set TIMESet 1
            set TIMEValue [[::SmallIntegerSingletonFactory::getInstance] getAt 1]
        }
        return $TIMEValue
    }
    proc staticSet_TIME {value} {
        variable TIMEValue
        variable TIMESet
        set TIMESet 1
        set TIMEValue $value
    }
}


