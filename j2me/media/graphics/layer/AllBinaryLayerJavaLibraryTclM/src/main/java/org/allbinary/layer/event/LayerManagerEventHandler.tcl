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
# package org.allbinary.layer.event

oo::class create ::LayerManagerEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::LayerManagerEventHandler {
    method initFields_LayerManagerEventHandler {} {
        my jset list {}
        my jset CREATE {}
        my jset DELETE {}
        my jset list [::BasicArrayListD new]
        my jset CREATE "Create"
        my jset DELETE "Delete"
        return
    }
    
    

    constructor {} {
        next
        my initFields_LayerManagerEventHandler
    }
    

    method addListener {layerManagerEventListener} {
        if {[expr {![[my jget list] contains $layerManagerEventListener]}]} {
            [my jget list] add $layerManagerEventListener
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
                set layerManagerEventListener [[[my jget list] jget objectArray] get $index]
                $layerManagerEventListener onCreateLayerManagerEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        next $eventObject
    }
    

    method fireDeleteEvent {eventObject} {
        for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set layerManagerEventListener [[[my jget list] jget objectArray] get $index]
                $layerManagerEventListener onDeleteLayerManagerEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        set eventListenerInterfaceList [my jget eventListenerInterfaceList]
        set eventListenerInterface {}
        set layerManagerEventListenerInterface {}
        set listenerIndex 0
        while {[expr {$listenerIndex < [$eventListenerInterfaceList size]}]} {
            try {
                set eventListenerInterface [[$eventListenerInterfaceList jget objectArray] get $listenerIndex]
                set layerManagerEventListenerInterface ($eventListenerInterface)
                $layerManagerEventListenerInterface onDeleteLayerManagerEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
            jpostincr listenerIndex 1
        }
    }
    

    method process {eventObject eventListenerInterface} {
        set layerManagerEventListenerInterface ($eventListenerInterface)
        $layerManagerEventListenerInterface onCreateLayerManagerEvent $eventObject
    }
}

namespace eval ::LayerManagerEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LayerManagerEventHandler new]
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
        return [::LayerManagerEventHandler::staticGet_instance]
    }
}


