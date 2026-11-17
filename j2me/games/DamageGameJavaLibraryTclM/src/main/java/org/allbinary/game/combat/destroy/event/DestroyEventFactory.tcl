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
# package org.allbinary.game.combat.destroy.event

oo::class create ::DestroyEventFactory {
    superclass ::JObject
}

oo::define ::DestroyEventFactory {
    method initFields_DestroyEventFactory {} {
        my jset combatGameCanvas {}
        
        return
    }
    

    constructor {combatGameCanvas} {
        next
        my initFields_DestroyEventFactory
        my jset combatGameCanvas $combatGameCanvas
    }
    

    method getInstance {} {
        return [::DestroyedEvent new [my jget combatGameCanvas]]
    }
}

namespace eval ::DestroyEventFactory {
}


