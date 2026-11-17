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

oo::class create ::MainFeatureFactory {
    superclass ::JObject
}

oo::define ::MainFeatureFactory {
    method initFields_MainFeatureFactory {} {
        my jset FULL_SCREEN {}
        my jset TITLE_BAR {}
        my jset STATIC {}
        my jset LOAD_ONDEMAND {}
        my jset LOAD_ALL {}
        my jset FULL_SCREEN [::Feature new "Full Screen"]
        my jset TITLE_BAR [::Feature new "Title Bar"]
        my jset STATIC [::Feature new "Static Dependent Feature"]
        my jset LOAD_ONDEMAND [::Feature new "Load OnDemand"]
        my jset LOAD_ALL [::Feature new "Load All"]
        return
    }

    constructor {} {
        next
        my initFields_MainFeatureFactory
    }
    
}

namespace eval ::MainFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MainFeatureFactory new]
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
        return [::MainFeatureFactory::staticGet_instance]
    }
}


