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

oo::class create ::MyFormUtil {
    superclass ::JObject
}

oo::define ::MyFormUtil {
    method initFields_MyFormUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset popupMenuRectangle {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset popupMenuRectangle [::RectangleFactory::staticGet_SINGLETON]
        return
    }

    constructor {} {
        next
        my initFields_MyFormUtil
    }
    
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set features [::Features::getInstance]
        set isOpenGL [$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]
        set TOTAL_CHAR_WIDTH [expr {[expr {[[::SWTJOGLProcessor::getInstance] isJOGL] && $isOpenGL}] ? 2 : 3}]
        set width [::MyFontProcessor::defaultStringWidth $font $TOTAL_CHAR_WIDTH]
        set pointFactory [::PointFactory::getInstance]
        if {[expr {[$displayInfo getLastHeight] < 320}]} {
            my jset popupMenuRectangle [::Rectangle new [$pointFactory createXY 0 25] $width [expr {([expr {[$font getHeight] * 4}]) + 2}]]
        } else {
            my jset popupMenuRectangle [::Rectangle new [$pointFactory createXY 0 [expr {[$displayInfo getLastHalfHeight] - 70}]] $width ([expr {[$font getHeight] * 5}])]
        }
    }
    

    method getPopupMenuRectangle {} {
        return [my jget popupMenuRectangle]
    }
}

namespace eval ::MyFormUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MyFormUtil new]
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
        return [::MyFormUtil::staticGet_instance]
    }
}


