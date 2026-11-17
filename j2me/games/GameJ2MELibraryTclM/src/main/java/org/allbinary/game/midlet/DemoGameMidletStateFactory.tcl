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
# package org.allbinary.game.midlet

oo::class create ::DemoGameMidletStateFactory {
    superclass ::JObject
}

oo::define ::DemoGameMidletStateFactory {
    method initFields_DemoGameMidletStateFactory {} {
        my jset NONE {}
        my jset START_DEMO {}
        my jset START_GAME {}
        my jset START_INPUT_MAPPING {}
        my jset NONE [::DemoGameMidletState new]
        my jset START_DEMO [::DemoGameMidletState new]
        my jset START_GAME [::DemoGameMidletState new]
        my jset START_INPUT_MAPPING [::DemoGameMidletState new]
        return
    }
    

    constructor {} {
        next
        my initFields_DemoGameMidletStateFactory
    }
    
}

namespace eval ::DemoGameMidletStateFactory {
    variable STATEValue {}
    variable STATESet 0
    proc staticGet_STATE {} {
        variable STATEValue
        variable STATESet
        if {!$STATESet} {
            set STATESet 1
            set STATEValue [::DemoGameMidletStateFactory new]
        }
        return $STATEValue
    }
    proc staticSet_STATE {value} {
        variable STATEValue
        variable STATESet
        set STATESet 1
        set STATEValue $value
    }
    proc getInstance {} {
        return [::DemoGameMidletStateFactory::staticGet_STATE]
    }
}


