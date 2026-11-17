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
# package org.allbinary.game.part

oo::class create ::CountedLayersHudPaintable {
    superclass ::JObject
}

oo::define ::CountedLayersHudPaintable {
    method initFields_CountedLayersHudPaintable {} {
        my jset displayInfoSingleton {}
        my jset partInterfaceArray {}
        my jset countedTotalStringColor 0
        my jset countedPartsBorder 0
        my jset startIndex 0
        my jset dropSize 0
        my jset myFontProcessor {}
        my jset height 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        
        
        
        
        
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset height 0
        return
    }
    

    constructor {partInterfaceArray dropSize startIndex countedTotalStringColor countedPartsBorder} {
        next
        my initFields_CountedLayersHudPaintable
        my jset partInterfaceArray $partInterfaceArray
        my jset startIndex $startIndex
        my jset countedTotalStringColor $countedTotalStringColor
        my jset countedPartsBorder $countedPartsBorder
        my jset dropSize $dropSize
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset height [$font getHeight]
        if {[expr {[my jget dropSize] > [$font getHeight]}]} {
            my jset height [my jget dropSize]
        }
        if {[expr {[::CountedLayersHudPaintable::staticGet_XXStringWidth] == 0}]} {
            set XXString "XX"
            ::CountedLayersHudPaintable::staticSet_XXStringWidth [$font stringWidth $XXString]
        }
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set lastWidth [[my jget displayInfoSingleton] getLastWidth]
        set widthEdge [jint [expr {$lastWidth - [my jget dropSize]}]]
        set size [[my jget partInterfaceArray] length]
        set count 0
        set y 0
        set countedLayerInterfaceFactory {}
        set pickedUpLayerInterfaceFactoryInterface {}
        set layerInterface {}
        set charArray {}
        for {set index [my jget startIndex]} {[expr {$index < $size}]} {jpostincr index 1} {
            set countedLayerInterfaceFactory [[my jget partInterfaceArray] get $index]
            if {[expr {[$countedLayerInterfaceFactory getTotal] > 0}]} {
                set pickedUpLayerInterfaceFactoryInterface [$countedLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory]
                set layerInterface [$pickedUpLayerInterfaceFactoryInterface getIconLayer]
                set y [jint [expr {40 + ([jint [expr {$count * [my jget height]}]])}]]
                $layerInterface setPosition $widthEdge $y [$layerInterface getZP]
                $layerInterface paint $graphics
                $graphics setColor [my jget countedTotalStringColor]
                $countedLayerInterfaceFactory paint $graphics
                set charArray [$countedLayerInterfaceFactory getTotalString]
                $graphics drawChars $charArray 0 [$charArray length] [expr {$widthEdge - [$countedLayerInterfaceFactory getXOffset]}] $y 0
                jpostincr count 1
            }
        }
        if {[expr {$count > 0}]} {
            $graphics setColor [my jget countedPartsBorder]
            $graphics drawRect [jint [expr {$lastWidth - ([jint [expr {[::CountedLayersHudPaintable::staticGet_XXStringWidth] + [my jget dropSize]}]])}]] 40 [jint [expr {[::CountedLayersHudPaintable::staticGet_XXStringWidth] + [my jget dropSize]}]] [jint [expr {([jint [expr {$count * [my jget height]}]]) + 3}]]
        }
    }
    

    method paintThreed {graphics} {
    }
}

namespace eval ::CountedLayersHudPaintable {
    variable XXStringWidthValue {}
    variable XXStringWidthSet 0
    proc staticGet_XXStringWidth {} {
        variable XXStringWidthValue
        variable XXStringWidthSet
        if {!$XXStringWidthSet} {
            set XXStringWidthSet 1
            set XXStringWidthValue 0
        }
        return $XXStringWidthValue
    }
    proc staticSet_XXStringWidth {value} {
        variable XXStringWidthValue
        variable XXStringWidthSet
        set XXStringWidthSet 1
        set XXStringWidthValue $value
    }
}


