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
# package org.allbinary.game.displayable.canvas

oo::class create ::StartIntermissionPaintable {
    superclass ::InitUpdatePaintable
}

oo::define ::StartIntermissionPaintable {
    method initFields_StartIntermissionPaintable {} {
        my jset fontDebugFactory {}
        my jset basicSetColorUtil {}
        my jset gameCanvas {}
        my jset stringArray {}
        my jset fontSize 0
        my jset font {}
        my jset lastWidth {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset basicColor {}
        my jset color 0
        my jset lineYOffsetArray {}
        my jset hasChanged false
        my jset anchor 0
        my jset fontHeightP 0
        my jset BEGIN_LEVEL {}
        my jset EMPTY_STRING {}
        my jset fontDebugFactory [::FontDebugFactory::getInstance]
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        
        
        
        
        
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset basicColor [[::BasicColorFactory::getInstance] jget BLACK]
        
        my jset lineYOffsetArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
        my jset hasChanged true
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset fontHeightP 0
        my jset BEGIN_LEVEL "Begin Level "
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {gameCanvas stringArray basicColor font} {
        next
        my initFields_StartIntermissionPaintable
        my jset gameCanvas $gameCanvas
        my jset stringArray $stringArray
        my jset lastWidth [jarray [[my jget stringArray] length] 0]
        my setBasicColorP $basicColor
        my jset color [$basicColor intValue]
        my jset fontSize [$font getSize]
        my jset font $font
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset fontHeightP [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set existingFont [$graphics getFont]
        [my jget fontDebugFactory] setFont [my jget font] $graphics
        set displayInfo [::DisplayInfoSingleton::getInstance]
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my jget basicColor] [my jget color]
        set beginWidth 0
        for {set index [jint [expr {[[my jget lineYOffsetArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[my jget hasChanged]} {
                [my jget lastWidth] set $index ([expr {[[$graphics getFont] stringWidth [[my jget stringArray] get $index]] >> 1}])
            }
            set beginWidth [[my jget lastWidth] get $index]
            $graphics drawString [[my jget stringArray] get $index] [expr {[$displayInfo getLastHalfWidth] - $beginWidth}] [expr {[$displayInfo getLastHalfHeight] - [[my jget lineYOffsetArray] get $index]}] [my jget anchor]
        }
        my jset hasChanged false
        [my jget fontDebugFactory] setFont $existingFont $graphics
    }
    

    method update {} {
        set level [[[[my jget gameCanvas] getLayerManager] getGameInfo] getCurrentLevel]
        [my jget stringArray] set 0 [[[[::StringMaker new] append [my jget BEGIN_LEVEL]] appendint $level] toString]
        for {set index [jint [expr {[[my jget stringArray] length] - 1}]]} {[expr {$index >= 1}]} {jpostincr index -1} {
            [my jget stringArray] set $index [my jget EMPTY_STRING]
        }
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
}

namespace eval ::StartIntermissionPaintable {
}


