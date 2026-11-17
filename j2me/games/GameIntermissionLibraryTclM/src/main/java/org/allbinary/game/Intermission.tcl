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
# package org.allbinary.game

oo::class create ::Intermission {
    superclass ::JObject
}

oo::define ::Intermission {
    method initFields_Intermission {} {
        my jset enabled false
        my jset timeElapsedHelper {}
        my jset intermissionEnableListener {}
        my jset enabled false
        my jset timeElapsedHelper [::TimeDelayHelper new 0]
        my jset intermissionEnableListener [::NullIntermissionEnableListener::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_Intermission
    }
    

    method setListener {enableListener} {
        my jset intermissionEnableListener $enableListener
    }
    

    method getTimeDelayHelper {} {
        return [my jget timeElapsedHelper]
    }
    

    method setEnabled {enabled} {
        my jset enabled $enabled
        if {[my isEnabled]} {
            [my getTimeDelayHelper] setStartTimeTNT
        }
        [my jget intermissionEnableListener] notifyIntermission $enabled
    }
    

    method isEnabled {} {
        return [my jget enabled]
    }
}

namespace eval ::Intermission {
}


