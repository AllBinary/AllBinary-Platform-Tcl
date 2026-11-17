# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable

oo::class create ::CanvasStrings {
    superclass ::JObject
}

oo::define ::CanvasStrings {
    method initFields_CanvasStrings {} {
        my jset CONSTRUCTOR {}
        my jset PAUSE {}
        my jset UN_PAUSE {}
        my jset SET_FULL_SCREEN_MODE {}
        my jset SIZE_CHANGED {}
        my jset SCALED_IMAGES {}
        my jset PAINT {}
        my jset ON_DISPLAY_CHANGE_EVENT {}
        my jset UPDATE_MEASUREMENT {}
        my jset FD_WIDTH {}
        my jset FD_HEIGHT {}
        my jset EMPTY_CHILD_NAME_LIST {}
        my jset ABOUT {}
        my jset OPTIONS {}
        my jset FONT_ATLAS {}
        my jset OBJ_MODEL {}
        my jset MD2_MODEL {}
        my jset _PNG {}
        my jset CONSTRUCTOR "MyCanvas::MyCanvas"
        my jset PAUSE "MyCanvas::pause"
        my jset UN_PAUSE "MyCanvas::unPause"
        my jset SET_FULL_SCREEN_MODE "setFullScreenMode"
        my jset SIZE_CHANGED "sizeChanged"
        my jset SCALED_IMAGES "scaledImages"
        my jset PAINT "paint"
        my jset ON_DISPLAY_CHANGE_EVENT "onDisplayChangeEvent"
        my jset UPDATE_MEASUREMENT "updateMeasurement"
        my jset FD_WIDTH " font/display width: "
        my jset FD_HEIGHT " font/display height: "
        my jset EMPTY_CHILD_NAME_LIST [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        my jset ABOUT "About"
        my jset OPTIONS "Options"
        my jset FONT_ATLAS "/font.png"
        my jset OBJ_MODEL "_obj"
        my jset MD2_MODEL "_md2"
        my jset _PNG ".png"
        return
    }

    constructor {} {
        next
        my initFields_CanvasStrings
    }
    
}

namespace eval ::CanvasStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CanvasStrings new]
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
        return [::CanvasStrings::staticGet_instance]
    }
}


