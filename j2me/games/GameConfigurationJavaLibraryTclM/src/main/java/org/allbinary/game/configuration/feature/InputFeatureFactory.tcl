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

oo::class create ::InputFeatureFactory {
    superclass ::JObject
}

oo::define ::InputFeatureFactory {
    method initFields_InputFeatureFactory {} {
        my jset REMOVE_DUPLICATE_KEY_PRESSES {}
        my jset INPUT_MAPPING {}
        my jset MULTI_KEY_PRESS {}
        my jset SINGLE_KEY_REPEAT_PRESS {}
        my jset SINGLE_KEY_PRESS {}
        my jset REMOVE_DUPLICATE_KEY_PRESSES [::InputFeature new "Remove Duplicate Key Presses"]
        my jset INPUT_MAPPING [::InputFeature new "Input Mapping"]
        my jset MULTI_KEY_PRESS [::InputFeature new "Multi Key Press"]
        my jset SINGLE_KEY_REPEAT_PRESS [::InputFeature new "Single Key Repeat Press"]
        my jset SINGLE_KEY_PRESS [::InputFeature new "Single Key Press"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_InputFeatureFactory
    }
    

    method isSingleKeyProcessing {} {
        set features [::Features::getInstance]
        if {[expr {[$features isFeature [my jget SINGLE_KEY_REPEAT_PRESS]] || [$features isFeature [my jget SINGLE_KEY_PRESS]]}]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::InputFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::InputFeatureFactory new]
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
        return [::InputFeatureFactory::staticGet_instance]
    }
}


