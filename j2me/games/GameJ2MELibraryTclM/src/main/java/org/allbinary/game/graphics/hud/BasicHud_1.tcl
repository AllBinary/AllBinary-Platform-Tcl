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

oo::class create ::BasicHud_1 {
    superclass ::JObject
}

oo::define ::BasicHud_1 {
    method initFields_BasicHud_1 {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset canvasStrings {}
        my jset basicSetColorUtil {}
        my jset displayInfo {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset location 0
        my jset direction 0
        my jset bufferZone 0
        my jset hudGraphicsPosition {}
        my jset x 0
        my jset y 0
        my jset basicColor {}
        my jset color 0
        my jset updateMaxWidth 0
        my jset updateMaxHeight 0
        my jset offsetY 0
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset canvasStrings [::CanvasStrings::getInstance]
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset location 0
        my jset direction 0
        my jset bufferZone 0
        my jset hudGraphicsPosition [::HudGraphicsPosition::staticGet_NULL_HUD_GRAPHICS_POSITION]
        my jset x 0
        my jset y 0
        my jset basicColor [[::BasicColorFactory::getInstance] jget BLACK]
        
        my jset updateMaxWidth 0
        my jset updateMaxHeight 0
        my jset offsetY 0
        return
    }
    

    constructor {location direction bufferZone basicColor} {
        next
        my initFields_BasicHud_1
        my setLocation $location
        my setDirection $direction
        my setBufferZone $bufferZone
        my onDisplayChangeEvent [[::DisplayInfoSingleton::getInstance] jget displayChangeEvent]
        my setBasicColorP $basicColor
        my jset color [$basicColor intValue]
    }
    

    method updateMeasurement {graphics} {
        try {
            my jset hudGraphicsPosition [my getHudGraphicsPositionWH [[my jget displayInfo] getLastWidth] [[my jget displayInfo] getLastHeight] [my jget updateMaxWidth] [my jget updateMaxHeight]]
            my jset x [[[my jget hudGraphicsPosition] getPoint] getX]
            my setY [[[my jget hudGraphicsPosition] getPoint] getY]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT] $e
        }
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method getLocation {} {
        return [my jget location]
    }
    

    method getDirection {} {
        return [my jget direction]
    }
    

    method getHudGraphicsPositionWH {width height maxWidth maxHeight} {
        set x 0
        set y 0
        set anchor 0
        set basicHudFactory [::BasicHudFactory::getInstance]
        if {[expr {[$basicHudFactory jget BOTTOMLEFT] == [my getLocation]}]} {
            set x [jint [expr {[my jget bufferZone] + 2}]]
            set y [jint [expr {[jint [expr {$height - $maxHeight}]] - [my jget bufferZone]}]]
            set anchor [expr {[::Graphics::staticGet_BOTTOM] & [::Graphics::staticGet_LEFT]}]
        } elseif {[expr {[$basicHudFactory jget BOTTOMRIGHT] == [my getLocation]}]} {
            set x [jint [expr {$width - $maxWidth}]]
            set y [jint [expr {[jint [expr {$height - $maxHeight}]] - [my jget bufferZone]}]]
            set anchor [expr {[::Graphics::staticGet_BOTTOM] & [::Graphics::staticGet_RIGHT]}]
        } elseif {[expr {[$basicHudFactory jget TOPLEFT] == [my getLocation]}]} {
            set x [jint [expr {[my jget bufferZone] + 2}]]
            set y [jint [expr {[my jget bufferZone] + 5}]]
            set anchor [::Anchor::staticGet_TOP_LEFT]
        } elseif {[expr {[$basicHudFactory jget TOPRIGHT] == [my getLocation]}]} {
            set x [jint [expr {$width - $maxWidth}]]
            set y [jint [expr {[my jget bufferZone] + 5}]]
            set anchor [expr {[::Graphics::staticGet_TOP] & [::Graphics::staticGet_RIGHT]}]
        } elseif {[expr {[$basicHudFactory jget TOPCENTER] == [my getLocation]}]} {
            set x ([jdiv ([jint [expr {$width - $maxWidth}]]) 2])
            set y [jint [expr {[my jget bufferZone] + 5}]]
            set anchor [expr {[::Graphics::staticGet_TOP] & [::Graphics::staticGet_HCENTER]}]
        } elseif {[expr {[$basicHudFactory jget BOTTOMCENTER] == [my getLocation]}]} {
            set x ([jdiv ([jint [expr {$width - $maxWidth}]]) 2])
            set y [jint [expr {[jint [expr {$height - $maxHeight}]] - [my jget bufferZone]}]]
            set anchor [expr {[::Graphics::staticGet_BOTTOM] & [::Graphics::staticGet_HCENTER]}]
        } elseif {[expr {[$basicHudFactory jget ABSOLUTE] == [my getLocation]}]} {
            set x $maxHeight
            set y $maxWidth
            set anchor 0
        }
        return [::HudGraphicsPosition new [my getPoint $x $y] $anchor]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onDisplayChangeEvent {displayChangeEvent} {
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method getPoint {x y} {
        return [[::PointFactory::getInstance] createXY $x $y]
    }
    

    method getBufferZone {} {
        return [my jget bufferZone]
    }
    

    method setBufferZone {bufferZone} {
        my jset bufferZone $bufferZone
    }
    

    method setLocation {location} {
        my jset location $location
    }
    

    method setDirection {direction} {
        my jset direction $direction
    }
    

    method getHudGraphicsPosition {} {
        return [my jget hudGraphicsPosition]
    }
    

    method getColor {} {
        return [my jget color]
    }
    

    method getX {} {
        return [my jget x]
    }
    

    method setX {x} {
        my jset x $x
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method setY {y} {
        my jset y $y
    }
    

    method getY {} {
        return [my jget y]
    }
    

    method paintSSO {graphics string string2 offset} {
        [my jget myFontProcessor] process $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        $graphics drawString $string [my jget x] [my getY] [[my jget hudGraphicsPosition] getAnchor]
        $graphics drawString $string2 [jint [expr {[my jget x] + $offset}]] [my getY] [[my jget hudGraphicsPosition] getAnchor]
    }
    

    method paintSSOO {graphics string string2 offset offset2} {
        [my jget myFontProcessor] process $graphics
        $graphics setColor [my getColor]
        $graphics drawString $string [jint [expr {[my jget x] + $offset}]] [my getY] [[my jget hudGraphicsPosition] getAnchor]
        $graphics drawString $string2 [jint [expr {[my jget x] + $offset2}]] [my getY] [[my jget hudGraphicsPosition] getAnchor]
    }
    

    method paintDXY {graphics charArray offset len charArray2 offset2 len2 xOffset xOffset2} {
        [my jget myFontProcessor] process $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        set y [my getY]
        $graphics drawChars $charArray $offset $len [jint [expr {[my jget x] + $xOffset}]] $y [[my jget hudGraphicsPosition] getAnchor]
        $graphics drawChars $charArray2 $offset2 $len2 [jint [expr {[my jget x] + $xOffset2}]] $y [[my jget hudGraphicsPosition] getAnchor]
    }
    

    method paintDX {graphics charArray offset len charArray2 offset2 len2 xOffset} {
        [my jget myFontProcessor] process $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        set y [my getY]
        $graphics drawChars $charArray $offset $len [my jget x] $y [[my jget hudGraphicsPosition] getAnchor]
        $graphics drawChars $charArray2 $offset2 $len2 [jint [expr {[my jget x] + $xOffset}]] $y [[my jget hudGraphicsPosition] getAnchor]
    }
    

    method paintOffsetAndLength {graphics charArray offset len} {
        [my jget myFontProcessor] process $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        set y [my getY]
        $graphics drawChars $charArray $offset $len [my jget x] $y [[my jget hudGraphicsPosition] getAnchor]
    }
    

    method paintString {graphics string} {
        [my jget myFontProcessor] process $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        set y [jint [expr {[my getY] + [my jget offsetY]}]]
        $graphics drawString $string [my jget x] $y [[my jget hudGraphicsPosition] getAnchor]
    }
}

namespace eval ::BasicHud_1 {
}


