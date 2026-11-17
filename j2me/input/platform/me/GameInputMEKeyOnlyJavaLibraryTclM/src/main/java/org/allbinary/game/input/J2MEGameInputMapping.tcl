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

oo::class create ::J2MEGameInputMapping {
    superclass ::PersistentInputMapping
}

oo::define ::J2MEGameInputMapping {
    method initFields_J2MEGameInputMapping {} {
        return
    }
    

    constructor {} {
        next [[::GamePersistanceStrings::getInstance] jget SAVED_INPUT_CONFIGURATION_RECORD_ID]
        my initFields_J2MEGameInputMapping
    }
    

    method init {abeClientInformation} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget INIT]
        [::J2MEKeyFactory::getInstance] init
        next $abeClientInformation
        if {[expr {[expr {[my getTotalMapped] == 0}] || [my isDefaultNew]}]} {
            [my getInputMapping] addMapping [my getDefault]
            my save $abeClientInformation
        }
    }
    

    method isDelete {input} {
        if {[expr {$input eq [[::GameKeyFactory::getInstance] jget GAME_D]}]} {
            return true
        } else {
            return false
        }
    }
    

    method isSystemInput {input} {
        return false
    }
}

namespace eval ::J2MEGameInputMapping {
}


