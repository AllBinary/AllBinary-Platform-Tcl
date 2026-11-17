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
# package org.allbinary.game.graphics.hud

oo::class create ::BasicHudFactory {
    superclass ::JObject
}

oo::define ::BasicHudFactory {
    method initFields_BasicHudFactory {} {
        my jset DIRECTION_EXCEPTION {}
        my jset VERTICAL 0
        my jset HORIZONTAL 0
        my jset BOTTOMLEFT 0
        my jset BOTTOMRIGHT 0
        my jset TOPLEFT 0
        my jset TOPRIGHT 0
        my jset BOTTOMCENTER 0
        my jset TOPCENTER 0
        my jset ABSOLUTE 0
        my jset DIRECTION_EXCEPTION "Only Horizontal Direction is Allowed Currently"
        my jset VERTICAL 0
        my jset HORIZONTAL 1
        my jset BOTTOMLEFT 0
        my jset BOTTOMRIGHT 1
        my jset TOPLEFT 2
        my jset TOPRIGHT 3
        my jset BOTTOMCENTER 4
        my jset TOPCENTER 5
        my jset ABSOLUTE 6
        return
    }
    
    

    constructor {} {
        next
        my initFields_BasicHudFactory
    }
}

namespace eval ::BasicHudFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicHudFactory new]
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
        return [::BasicHudFactory::staticGet_instance]
    }
}


