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
# package org.allbinary.game.terrain

oo::class create ::BasicTerrainInfo {
    superclass ::JObject
}

oo::define ::BasicTerrainInfo {
    method initFields_BasicTerrainInfo {} {
        my jset angle {}
        
        return
    }
    

    constructor {angle} {
        next
        my initFields_BasicTerrainInfo
        my jset angle $angle
    }
    

    method getAngle {} {
        return [my jget angle]
    }
    

    method setAngle {angle} {
        my jset angle $angle
    }
}

namespace eval ::BasicTerrainInfo {
    variable NULL_BASIC_TERRAIN_INFOValue {}
    variable NULL_BASIC_TERRAIN_INFOSet 0
    proc staticGet_NULL_BASIC_TERRAIN_INFO {} {
        variable NULL_BASIC_TERRAIN_INFOValue
        variable NULL_BASIC_TERRAIN_INFOSet
        if {!$NULL_BASIC_TERRAIN_INFOSet} {
            set NULL_BASIC_TERRAIN_INFOSet 1
            set NULL_BASIC_TERRAIN_INFOValue [::BasicTerrainInfo new [[::AngleFactory::getInstance] jget NOT_ANGLE]]
        }
        return $NULL_BASIC_TERRAIN_INFOValue
    }
    proc staticSet_NULL_BASIC_TERRAIN_INFO {value} {
        variable NULL_BASIC_TERRAIN_INFOValue
        variable NULL_BASIC_TERRAIN_INFOSet
        set NULL_BASIC_TERRAIN_INFOSet 1
        set NULL_BASIC_TERRAIN_INFOValue $value
    }
}


