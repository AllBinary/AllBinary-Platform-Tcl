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
# package org.allbinary.media

oo::class create ::AllBinaryVisualDebugVibration {
    superclass ::AllBinaryVibrationME
}

oo::define ::AllBinaryVisualDebugVibration {
    method initFields_AllBinaryVisualDebugVibration {} {
        my jset displayInfoSingleton {}
        my jset timeDelayHelper {}
        my jset VIBRATING {}
        my jset myFontProcessor {}
        my jset anchor 0
        my jset width 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset timeDelayHelper [::TimeDelayHelper new [::Integer::staticGet_MAX_VALUE]]
        my jset VIBRATING "Vibrating"
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset width 0
        return
    }

    constructor {} {
        next
        my initFields_AllBinaryVisualDebugVibration
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset width [$font stringWidth [my jget VIBRATING]]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method vibrate {duration type volume} {
        [my jget timeDelayHelper] jset delay $duration
    }
    

    method paint {graphics} {
        if {[[my jget timeDelayHelper] isTimeTNT]} {
            [my jget timeDelayHelper] jset delay [::Integer::staticGet_MAX_VALUE]
            [my jget myFontProcessor] process $graphics
            $graphics drawString [my jget VIBRATING] [expr {[[my jget displayInfoSingleton] getLastHalfWidth] - ([expr {[my jget width] >> 1}])}] 0 [my jget anchor]
        }
    }
}

namespace eval ::AllBinaryVisualDebugVibration {
}


