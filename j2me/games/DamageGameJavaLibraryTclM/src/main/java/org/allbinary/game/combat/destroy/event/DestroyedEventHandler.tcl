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

oo::class create ::DestroyedEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::DestroyedEventHandler {
    method initFields_DestroyedEventHandler {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_DestroyedEventHandler
    }
    

    method addListener {collidableDestroyableDamageableLayer} {
        if {[expr {![[my jget list] contains $collidableDestroyableDamageableLayer]}]} {
            [my jget list] add $collidableDestroyableDamageableLayer
        }
    }
    

    method removeAllListeners {} {
        [my jget list] clear
        next
    }
    

    method removeListener {eventListenerInterface} {
        [my jget list] remove $eventListenerInterface
        next $eventListenerInterface
    }
    

    method fireEvent {eventObject} {
        for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set collidableDestroyableDamageableLayer [[[my jget list] jget objectArray] get $index]
                $collidableDestroyableDamageableLayer onDestroyed $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        next $eventObject
    }
    

    method process {eventObject eventListenerInterface} {
        set destroyedEventListenerInterface $eventListenerInterface
        $destroyedEventListenerInterface onDestroyed $eventObject
    }
}

namespace eval ::DestroyedEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DestroyedEventHandler new]
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
        return [::DestroyedEventHandler::staticGet_instance]
    }
}


