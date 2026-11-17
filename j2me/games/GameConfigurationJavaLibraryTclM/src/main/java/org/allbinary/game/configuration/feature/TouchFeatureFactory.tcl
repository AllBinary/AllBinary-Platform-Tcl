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
# package org.allbinary.game.configuration.feature

oo::class create ::TouchFeatureFactory {
    superclass ::JObject
}

oo::define ::TouchFeatureFactory {
    method initFields_TouchFeatureFactory {} {
        my jset TOUCH_ENABLED {}
        my jset SHOW_SCREEN_BUTTONS {}
        my jset AUTO_HIDE_SHOW_SCREEN_BUTTONS {}
        my jset HIDE_SCREEN_BUTTONS {}
        my jset TOUCH_ENABLED [::TouchFeature new "Touch Enabled"]
        my jset SHOW_SCREEN_BUTTONS [::TouchFeature new "Show"]
        my jset AUTO_HIDE_SHOW_SCREEN_BUTTONS [::TouchFeature new "Auto Hide (One Level)"]
        my jset HIDE_SCREEN_BUTTONS [::TouchFeature new "Hide"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_TouchFeatureFactory
    }
}

namespace eval ::TouchFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TouchFeatureFactory new]
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
        return [::TouchFeatureFactory::staticGet_instance]
    }
}


