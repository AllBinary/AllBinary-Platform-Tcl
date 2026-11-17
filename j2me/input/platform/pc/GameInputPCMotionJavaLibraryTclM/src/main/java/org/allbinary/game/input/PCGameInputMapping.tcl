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
# package org.allbinary.game.input

oo::class create ::PCGameInputMapping {
    superclass ::PersistentInputMapping
}

oo::define ::PCGameInputMapping {
    method initFields_PCGameInputMapping {} {
        return
    }
    

    constructor {} {
        next [[::GamePersistanceStrings::getInstance] jget SAVED_INPUT_CONFIGURATION_RECORD_ID]
        my initFields_PCGameInputMapping
    }
    

    method init {abeClientInformation} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget INIT]
        ::PCKeyFactory::getInstance
        ::TouchMotionGestureFactory::getInstance
        ::TrackballMotionGestureFactory::getInstance
        ::BasicTouchInputFactory::getInstance
        next $abeClientInformation
        if {[expr {[expr {[my getTotalMapped] == 0}] || [my isDefaultNew]}]} {
            [my getInputMapping] addMapping [my getDefault]
            my save $abeClientInformation
        }
    }
    

    method isDelete {input} {
        if {[expr {$input eq [[::PCKeyFactory::getInstance] jget DEL]}]} {
            return true
        } else {
            return false
        }
    }
    

    method isSystemInput {input} {
        return false
    }
}

namespace eval ::PCGameInputMapping {
}


