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

oo::class create ::GameFeatureFactory {
    superclass ::JObject
}

oo::define ::GameFeatureFactory {
    method initFields_GameFeatureFactory {} {
        my jset SOUND {}
        my jset MUSIC {}
        my jset SCREEN_SHAKE {}
        my jset POST_IMAGE_LOADING_MODIFICATION {}
        my jset HEALTH_BARS {}
        my jset DAMAGE_FLOATERS {}
        my jset GAME_INPUT_LAYER_PROCESSOR {}
        my jset ARTIFICIAL_INTELLEGENCE_PROCESSOR {}
        my jset COLLIDABLE_INTERFACE_LAYER_PROCESSOR {}
        my jset TICKABLE_LAYER_PROCESSOR {}
        my jset CHEATING {}
        my jset DROPPED_ITEMS {}
        my jset DROPPED_ITEMS_FROM_DEATH {}
        my jset TEST_DESTROYED_LAYER_PROCESSOR {}
        my jset COLLISIONS_WITH_SOURCE {}
        my jset COLLISIONS_FORCED_TWO_DIMENSIONAL {}
        my jset SOUND [::GameFeature new "Sound"]
        my jset MUSIC [::GameFeature new "Music"]
        my jset SCREEN_SHAKE [::Feature new "Screen Shake"]
        my jset POST_IMAGE_LOADING_MODIFICATION [::Feature new "Post Image Loading Modification (Scaling, Rotation, or Other)"]
        my jset HEALTH_BARS [::GameFeature new "Health Bars"]
        my jset DAMAGE_FLOATERS [::GameFeature new "Damage Floaters"]
        my jset GAME_INPUT_LAYER_PROCESSOR [::GameFeature new "Game Input Layer Processor"]
        my jset ARTIFICIAL_INTELLEGENCE_PROCESSOR [::GameFeature new "Artificial Intelligence Layer Processor"]
        my jset COLLIDABLE_INTERFACE_LAYER_PROCESSOR [::GameFeature new "Collidable Interface Layer Processor"]
        my jset TICKABLE_LAYER_PROCESSOR [::GameFeature new "Tickable Layer Processor"]
        my jset CHEATING [::GameFeature new "Cheating"]
        my jset DROPPED_ITEMS [::GameFeature new "Drops"]
        my jset DROPPED_ITEMS_FROM_DEATH [::GameFeature new "Drops from Dead"]
        my jset TEST_DESTROYED_LAYER_PROCESSOR [::GameFeature new "Destroyed Layer Processor"]
        my jset COLLISIONS_WITH_SOURCE [::GameFeature new "Allow Collisions With Source"]
        my jset COLLISIONS_FORCED_TWO_DIMENSIONAL [::GameFeature new "Collisions Forced Two Dimensional"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameFeatureFactory
    }
}

namespace eval ::GameFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameFeatureFactory new]
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
        return [::GameFeatureFactory::staticGet_instance]
    }
}


