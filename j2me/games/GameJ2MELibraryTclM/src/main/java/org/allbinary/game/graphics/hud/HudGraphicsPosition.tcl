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

oo::class create ::HudGraphicsPosition {
    superclass ::JObject
}

oo::define ::HudGraphicsPosition {
    method initFields_HudGraphicsPosition {} {
        my jset anchor 0
        my jset point {}
        my jset anchor 0
        my jset point [[::PointFactory::getInstance] jget ZERO_ZERO]
        return
    }
    

    constructor {point anchor} {
        next
        my initFields_HudGraphicsPosition
        my setAnchor $anchor
        my setPoint $point
    }
    

    method getAnchor {} {
        return [my jget anchor]
    }
    

    method setAnchor {anchor} {
        my jset anchor $anchor
    }
    

    method getPoint {} {
        return [my jget point]
    }
    

    method setPoint {point} {
        my jset point $point
    }
}

namespace eval ::HudGraphicsPosition {
    variable NULL_HUD_GRAPHICS_POSITIONValue {}
    variable NULL_HUD_GRAPHICS_POSITIONSet 0
    proc staticGet_NULL_HUD_GRAPHICS_POSITION {} {
        variable NULL_HUD_GRAPHICS_POSITIONValue
        variable NULL_HUD_GRAPHICS_POSITIONSet
        if {!$NULL_HUD_GRAPHICS_POSITIONSet} {
            set NULL_HUD_GRAPHICS_POSITIONSet 1
            set NULL_HUD_GRAPHICS_POSITIONValue [::HudGraphicsPosition new [[::PointFactory::getInstance] jget ZERO_ZERO] 9]
        }
        return $NULL_HUD_GRAPHICS_POSITIONValue
    }
    proc staticSet_NULL_HUD_GRAPHICS_POSITION {value} {
        variable NULL_HUD_GRAPHICS_POSITIONValue
        variable NULL_HUD_GRAPHICS_POSITIONSet
        set NULL_HUD_GRAPHICS_POSITIONSet 1
        set NULL_HUD_GRAPHICS_POSITIONValue $value
    }
}


