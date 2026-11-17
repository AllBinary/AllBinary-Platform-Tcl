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
# package org.allbinary.game.configuration.event

oo::class create ::ChangedGameFeatureListener {
    superclass ::BaseChangedGameFeatureListener
}

oo::define ::ChangedGameFeatureListener {
    method initFields_ChangedGameFeatureListener {} {
        return
    }

    constructor {} {
        next
        my initFields_ChangedGameFeatureListener
    }
    
    

    method isChangedGameConfiguration {gameConfiguration} {
        return [[my jget list] contains $gameConfiguration]
    }
}

namespace eval ::ChangedGameFeatureListener {
    variable gameFeatureListenerValue {}
    variable gameFeatureListenerSet 0
    proc staticGet_gameFeatureListener {} {
        variable gameFeatureListenerValue
        variable gameFeatureListenerSet
        if {!$gameFeatureListenerSet} {
            set gameFeatureListenerSet 1
            set gameFeatureListenerValue [::ChangedGameFeatureListener new]
        }
        return $gameFeatureListenerValue
    }
    proc staticSet_gameFeatureListener {value} {
        variable gameFeatureListenerValue
        variable gameFeatureListenerSet
        set gameFeatureListenerSet 1
        set gameFeatureListenerValue $value
    }
    proc getInstance {} {
        return [::ChangedGameFeatureListener::staticGet_gameFeatureListener]
    }
}


