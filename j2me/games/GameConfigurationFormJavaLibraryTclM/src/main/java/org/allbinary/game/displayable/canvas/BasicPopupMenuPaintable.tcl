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

oo::class create ::BasicPopupMenuPaintable {
    superclass ::Paintable
}

oo::define ::BasicPopupMenuPaintable {
    method initFields_BasicPopupMenuPaintable {} {
        my jset basicSetColorUtil {}
        my jset drawStringUtil {}
        my jset label {}
        my jset foregroundBasicColor {}
        my jset myFontProcessor {}
        my jset rectangle {}
        my jset BORDER 0
        my jset heightOffset 0
        my jset offset 0
        my jset animationInterface {}
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset drawStringUtil [::DrawVerticalStringUtil::getInstance]
        
        
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        
        my jset BORDER 0
        my jset heightOffset 0
        my jset offset 0
        my jset animationInterface {}
        return
    }
    

    constructor {rectangle backgroundBasicColor foregroundBasicColor} {
        next
        my initFields_BasicPopupMenuPaintable
        my jset foregroundBasicColor $foregroundBasicColor
        my jset label [::BasicPopupMenuPaintable::staticGet_NAME]
        my jset rectangle $rectangle
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
            my jset animationInterface [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        } else {
            my jset animationInterface [::RectangleFilledAnimation new [[my jget rectangle] getWidth] [[my jget rectangle] getHeight] [[::BasicColorFactory::getInstance] jget TRANSPARENT_GREY]]
        }
        my init $rectangle
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        set features [::Features::getInstance]
        set isOpenGL [$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]
        [my jget drawStringUtil] updateMeasurement $graphics [my jget label]
        set BORDER 0
        if {[expr {[::J2MEUtil::isHTML] || $isOpenGL}]} {
            set BORDER [expr {[::MyFontProcessor::defaultCharWidth $font] / 2}]
        } elseif {[expr {[expr {[::AndroidUtil::isAndroid] || [::J2MEUtil::isJ2SE]}] || [::SWTUtil::staticGet_isSWT]}]} {
            set BORDER [::MyFontProcessor::defaultCharWidth $font]
        } else {
            set BORDER [expr {[::MyFontProcessor::defaultCharWidth $font] * 2}]
        }
        my jset BORDER $BORDER
        my jset heightOffset [expr {[[my jget rectangle] getHeight] - ([expr {[$font getHeight] * [[::BasicPopupMenuPaintable::staticGet_NAME] length]}])}]
        if {[[::OpenGLFeatureUtil::getInstance] isAnyThreed]} {
            my jset heightOffset [jint [expr {[my jget heightOffset] - [expr {[$font getHeight] + 2}]}]]
            if {[::AndroidUtil::isAndroid]} {
                my jset heightOffset [$font getHeight]
            } else {
                my jset heightOffset [jint [expr {[my jget heightOffset] - [expr {[$font getHeight] + 2}]}]]
            }
        }
        my jset offset [jint [expr {([expr {[my jget heightOffset] >> 1}]) + ([expr {[[::SWTJOGLProcessor::getInstance] isJOGL] ? 4 : 0}])}]]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method init {rectangle} {
        my jset rectangle $rectangle
        set width [[my jget rectangle] getWidth]
        set height [[my jget rectangle] getHeight]
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
        } else {
            set rectangleFilledAnimation [my jget animationInterface]
            $rectangleFilledAnimation setWidth $width
            $rectangleFilledAnimation setHeight $height
        }
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set point [[my jget rectangle] getPoint]
        set x [$point getX]
        set y [$point getY]
        set width [[my jget rectangle] getWidth]
        set height [[my jget rectangle] getHeight]
        [my jget animationInterface] paintXY $graphics $x $y
        [my jget basicSetColorUtil] setBasicColorP $graphics [my jget foregroundBasicColor]
        [my jget drawStringUtil] paintVerticle $graphics [my jget label] [jint [expr {$x + [my jget BORDER]}]] [jint [expr {$y + [my jget offset]}]] 0
        $graphics drawRect $x $y $width $height
    }
}

namespace eval ::BasicPopupMenuPaintable {
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "MENU"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
}


