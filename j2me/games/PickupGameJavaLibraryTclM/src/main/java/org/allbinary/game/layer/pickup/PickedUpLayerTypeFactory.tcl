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
# package org.allbinary.game.layer.pickup

oo::class create ::PickedUpLayerTypeFactory {
    superclass ::JObject
}

oo::define ::PickedUpLayerTypeFactory {
    method initFields_PickedUpLayerTypeFactory {} {
        my jset NONE {}
        my jset BEAM {}
        my jset MINE {}
        my jset PROJECTILE {}
        my jset ENHANCEMENT {}
        my jset MORPH {}
        my jset PART {}
        my jset HEAL {}
        my jset LIFE {}
        my jset POINTS {}
        my jset NONE [::PickedUpLayerType new [[::StringUtil::getInstance] jget NULL_STRING]]
        my jset BEAM [::PickedUpLayerType new "BEAM"]
        my jset MINE [::PickedUpLayerType new "MINE"]
        my jset PROJECTILE [::PickedUpLayerType new "PROJECTILE"]
        my jset ENHANCEMENT [::PickedUpLayerType new "Enhancement"]
        my jset MORPH [::PickedUpLayerType new "Morph"]
        my jset PART [::PickedUpLayerType new "Part"]
        my jset HEAL [::PickedUpLayerType new "Heal"]
        my jset LIFE [::PickedUpLayerType new "Life"]
        my jset POINTS [::PickedUpLayerType new "Points"]
        return
    }

    constructor {} {
        next
        my initFields_PickedUpLayerTypeFactory
    }
    
}

namespace eval ::PickedUpLayerTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PickedUpLayerTypeFactory new]
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
        return [::PickedUpLayerTypeFactory::staticGet_instance]
    }
}


