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
# package org.allbinary.graphics.displayable

oo::class create ::DisplayInfoSingleton {
    superclass ::JObject
}

oo::define ::DisplayInfoSingleton {
    method initFields_DisplayInfoSingleton {} {
        my jset logUtil {}
        my jset commonLabels {}
        my jset commonSeps {}
        my jset commonStrings {}
        my jset ORIENTATION {}
        my jset ADJUSTING_FOR_SCALING_IN_PORTRAIT {}
        my jset ADJUSTING_FOR_SCALING_IN_LANDSCAPE {}
        my jset last {}
        my jset lastHalf {}
        my jset full {}
        my jset top 0
        my jset left 0
        my jset xOffset 0
        my jset yOffset 0
        my jset scaleLargestTo 0.0
        my jset WIDTH 0
        my jset HEIGHT 0
        my jset CUSTOM_WIDTH 0
        my jset CUSTOM_HEIGHT 0
        my jset scalableListener {}
        my jset displayRatio 0.0
        my jset ratio 0.0
        my jset SET_LAST_SIZE_METHOD_NAME {}
        my jset FULL_WIDTH {}
        my jset FULL_HEIGHT {}
        my jset LAST_WIDTH {}
        my jset LAST_HEIGHT {}
        my jset PORTRAIT {}
        my jset LANDSCAPE {}
        my jset displayChangeEvent {}
        my jset FIRE_METHOD_NAME {}
        my jset REASON {}
        my jset UPDATE_FROM_ORIENTATION_CHANGE {}
        my jset list {}
        my jset DISPLAY_INFO {}
        my jset FULL {}
        my jset LAST {}
        my jset LAST_HALF {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonLabels [::CommonLabels::getInstance]
        my jset commonSeps [::CommonSeps::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset ORIENTATION "ORIENTATION"
        my jset ADJUSTING_FOR_SCALING_IN_PORTRAIT "Adjusting for Scaling in portrait display ratio: "
        my jset ADJUSTING_FOR_SCALING_IN_LANDSCAPE "Adjusting for Scaling in landscape display ratio: "
        my jset last [jarray 4 0]
        my jset lastHalf [jarray 4 0]
        my jset full [jarray 4 0]
        my jset top 0
        my jset left 0
        my jset xOffset 0
        my jset yOffset 0
        my jset scaleLargestTo 0.0
        my jset WIDTH 0
        my jset HEIGHT 1
        my jset CUSTOM_WIDTH 2
        my jset CUSTOM_HEIGHT 3
        my jset scalableListener [::BaseScalable new]
        my jset displayRatio 0.0
        my jset ratio 1.0
        my jset SET_LAST_SIZE_METHOD_NAME "setLastSize"
        my jset FULL_WIDTH " FullWidth: "
        my jset FULL_HEIGHT " FullHeight: "
        my jset LAST_WIDTH "LastWidth: "
        my jset LAST_HEIGHT " LastHeight: "
        my jset PORTRAIT "Portrait"
        my jset LANDSCAPE "Landscape"
        my jset displayChangeEvent [::DisplayChangeEvent new [self]]
        my jset FIRE_METHOD_NAME "fire"
        my jset REASON "reason: "
        my jset UPDATE_FROM_ORIENTATION_CHANGE "Updating from Orientation Change "
        my jset list [::BasicArrayListD new]
        my jset DISPLAY_INFO "Display Info: "
        my jset FULL "full"
        my jset LAST "last"
        my jset LAST_HALF "lastHalf"
        return
    }
    
    

    constructor {} {
        next
        my initFields_DisplayInfoSingleton
        set size [[my jget last] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget last] set $index 0
            [my jget lastHalf] set $index 0
            [my jget full] set $index 0
        }
        if {[::AndroidUtil::isAndroid]} {
            my jset scaleLargestTo 640.0
        } else {
            my jset scaleLargestTo 1080.0
        }
    }
    

    method getLastHalf {} {
        return [my jget lastHalf]
    }
    

    method getLast {} {
        return [my jget last]
    }
    

    method getFull {} {
        return [my jget full]
    }
    

    method getScaleLargestTo {} {
        return [my jget scaleLargestTo]
    }
    

    method setScaleLargestTo {scaleLargestTo} {
        my jset scaleLargestTo [expr {double($scaleLargestTo)}]
    }
    

    method setLastSize {aLastWidth aLastHeight reason} {
        if {[expr {[expr {[[my jget full] get [my jget WIDTH]] != $aLastWidth}] || [expr {[[my jget full] get [my jget HEIGHT]] != $aLastHeight}]}]} {
            my setLastSizeForce $aLastWidth $aLastHeight $reason
        }
    }
    

    method setLastSizeForce {aLastWidth aLastHeight reason} {
        set stringMaker [::StringMaker new]
        [my jget logUtil] putF [[[$stringMaker append [[::CommonLabels::getInstance] jget START_LABEL]] append $reason] toString] [self] [my jget SET_LAST_SIZE_METHOD_NAME]
        set aFullWidth $aLastWidth
        set aFullHeight $aLastHeight
        $stringMaker delete 0 [$stringMaker length]
        [my jget logUtil] putF [[[[[[$stringMaker append [my jget FULL_WIDTH]] appendint $aFullWidth] append [my jget FULL_HEIGHT]] appendint $aFullHeight] append [my toString]] toString] [self] [my jget SET_LAST_SIZE_METHOD_NAME]
        set operatingSystemInterface [[::OperatingSystemFactory::getInstance] getOperatingSystemInstance]
        if {[$operatingSystemInterface isOverScan]} {
            set aLastWidth [expr {[expr {$aLastWidth * [$operatingSystemInterface getOverScanXPercent]}] / 100}]
            set aLastHeight [expr {[expr {$aLastHeight * [$operatingSystemInterface getOverScanYPercent]}] / 100}]
        }
        if {[$operatingSystemInterface isScalable]} {
            if {[my isPortraitWH $aLastWidth $aLastHeight]} {
                if {[expr {[expr {double($aLastHeight)}] > [my jget scaleLargestTo]}]} {
                    my jset displayRatio [expr {[my jget scaleLargestTo] / [expr {double($aLastHeight)}]}]
                    my jset ratio [expr {[expr {double($aLastHeight)}] / [my jget scaleLargestTo]}]
                    $stringMaker delete 0 [$stringMaker length]
                    [my jget logUtil] putF [[[$stringMaker append [my jget ADJUSTING_FOR_SCALING_IN_PORTRAIT]] appendfloat [my jget displayRatio]] toString] [self] [my jget SET_LAST_SIZE_METHOD_NAME]
                    set aLastWidth [jint [jd2i ([expr {[expr {double($aLastWidth)}] * [my jget displayRatio]}])]]
                    set aLastHeight [jint [jd2i ([expr {[expr {double($aLastHeight)}] * [my jget displayRatio]}])]]
                    [my jget scalableListener] scale [my jget ratio]
                } else {
                    my jset ratio 1.0
                    [my jget scalableListener] scale [my jget ratio]
                }
            } else {
                if {[expr {[expr {double($aLastWidth)}] > [my jget scaleLargestTo]}]} {
                    my jset displayRatio [expr {[my jget scaleLargestTo] / [expr {double($aLastWidth)}]}]
                    my jset ratio [expr {[expr {double($aLastWidth)}] / [my jget scaleLargestTo]}]
                    $stringMaker delete 0 [$stringMaker length]
                    [my jget logUtil] putF [[[$stringMaker append [my jget ADJUSTING_FOR_SCALING_IN_LANDSCAPE]] appendfloat [my jget displayRatio]] toString] [self] [my jget SET_LAST_SIZE_METHOD_NAME]
                    set aLastWidth [jint [jd2i ([expr {[expr {double($aLastWidth)}] * [my jget displayRatio]}])]]
                    set aLastHeight [jint [jd2i ([expr {[expr {double($aLastHeight)}] * [my jget displayRatio]}])]]
                    [my jget scalableListener] scale [my jget ratio]
                } else {
                    my jset ratio 1.0
                    [my jget scalableListener] scale [my jget ratio]
                }
            }
        }
        $stringMaker delete 0 [$stringMaker length]
        [my jget logUtil] putF [[[[[$stringMaker append [my jget LAST_WIDTH]] appendint $aLastWidth] append [my jget LAST_HEIGHT]] appendint $aLastHeight] toString] [self] [my jget SET_LAST_SIZE_METHOD_NAME]
        my jset xOffset [jint [expr {$aFullWidth - $aLastWidth}]]
        my jset yOffset [jint [expr {$aFullHeight - $aLastHeight}]]
        my jset left [[my jget scalableListener] getLeft [my jget xOffset]]
        my jset top [[my jget scalableListener] getTop [my jget yOffset]]
        [my jget full] set [my jget WIDTH] $aFullWidth
        [my jget full] set [my jget HEIGHT] $aFullHeight
        [my jget last] set [my jget WIDTH] $aLastWidth
        [my jget lastHalf] set [my jget WIDTH] ([expr {[[my jget last] get [my jget WIDTH]] >> 1}])
        [my jget last] set [my jget HEIGHT] $aLastHeight
        [my jget lastHalf] set [my jget HEIGHT] ([expr {[[my jget last] get [my jget HEIGHT]] >> 1}])
        [::SWTJOGLProcessor::getInstance] setCustom $aLastWidth $aLastHeight [my jget ratio]
        my add [my jget SET_LAST_SIZE_METHOD_NAME]
    }
    

    method isPortraitWH {lastWidth lastHeight} {
        if {[expr {$lastHeight > $lastWidth}]} {
            return true
        } else {
            return false
        }
    }
    

    method isPortrait {} {
        return [my isPortraitWH [[my jget last] get [my jget WIDTH]] [[my jget last] get [my jget HEIGHT]]]
    }
    

    method add {reason} {
        set stringMaker [::StringMaker new]
        [my jget logUtil] putF [[[$stringMaker append [my jget REASON]] append $reason] toString] [self] [my jget FIRE_METHOD_NAME]
        $stringMaker delete 0 [$stringMaker length]
        [my jget logUtil] putF [my toStringAppend $stringMaker] [self] [my jget FIRE_METHOD_NAME]
        [my jget list] add $reason
    }
    

    method process {} {
        try {
            if {[expr {[[my jget list] size] > 0}]} {
                my processForced
            }
            [my jget list] clear
        } on error {e} {
            ::PreLogUtil::putOE [[my jget commonStrings] jget EXCEPTION] [self] [my jget FIRE_METHOD_NAME] $e
        }
    }
    

    method processForced {} {
        try {
            set swtJOGLProcessor [::SWTJOGLProcessor::getInstance]
            $swtJOGLProcessor clear
            [::DisplayChangeEventHandler::getInstance] fireEvent [my jget displayChangeEvent]
            [::LastDisplayChangeEventHandler::getInstance] fireEvent [my jget displayChangeEvent]
            $swtJOGLProcessor onSurfaceChanged
        } on error {e} {
            ::PreLogUtil::putOE [[my jget commonStrings] jget EXCEPTION] [self] [my jget FIRE_METHOD_NAME] $e
        }
    }
    

    method update {displayable reason} {
        set aLastWidth [$displayable getWidth]
        set aLastHeight [$displayable getHeight]
        set aFullWidth $aLastWidth
        set aFullHeight $aLastHeight
        set stringMaker [::StringMaker new]
        [my jget logUtil] putF [[[[[[[[[$stringMaker append [[::CommonLabels::getInstance] jget START_LABEL]] append $reason] append [my jget LAST_WIDTH]] appendint $aLastWidth] append [my jget LAST_HEIGHT]] appendint $aLastHeight] append [[my jget commonSeps] jget SPACE]] append [my toString]] toString] [self] [[my jget commonStrings] jget UPDATE]
        if {[expr {[expr {$aLastWidth > 0}] && [expr {$aLastHeight > 0}]}]} {
            set features [::Features::getInstance]
            set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
            if {[expr {[expr {[expr {![$features isDefault [$openGLFeatureFactory jget OPENGL]]}] || [expr {[[my jget last] get [my jget WIDTH]] != $aLastWidth}]}] || [expr {[[my jget last] get [my jget HEIGHT]] != $aLastHeight}]}]} {
                $stringMaker delete 0 [$stringMaker length]
                [my jget logUtil] putF [[$stringMaker append [my jget UPDATE_FROM_ORIENTATION_CHANGE]] toString] [self] [[my jget commonStrings] jget UPDATE]
                set operatingSystemInterface [[::OperatingSystemFactory::getInstance] getOperatingSystemInstance]
                if {[$operatingSystemInterface isOverScan]} {
                    set aLastWidth [expr {[expr {$aLastWidth * [$operatingSystemInterface getOverScanXPercent]}] / 100}]
                    set aLastHeight [expr {[expr {$aLastHeight * [$operatingSystemInterface getOverScanYPercent]}] / 100}]
                }
                if {[$operatingSystemInterface isScalable]} {
                    if {[my isPortraitWH $aLastWidth $aLastHeight]} {
                        if {[expr {[expr {double($aLastHeight)}] > [my jget scaleLargestTo]}]} {
                            my jset displayRatio [expr {[my jget scaleLargestTo] / [expr {double($aLastHeight)}]}]
                            my jset ratio [expr {[expr {double($aLastHeight)}] / [my jget scaleLargestTo]}]
                            $stringMaker delete 0 [$stringMaker length]
                            [my jget logUtil] putF [[[$stringMaker append [my jget ADJUSTING_FOR_SCALING_IN_PORTRAIT]] appendfloat [my jget displayRatio]] toString] [self] [[my jget commonStrings] jget UPDATE]
                            set aLastWidth [jint [jd2i ([expr {[expr {double($aLastWidth)}] * [my jget displayRatio]}])]]
                            set aLastHeight [jint [jd2i ([expr {[expr {double($aLastHeight)}] * [my jget displayRatio]}])]]
                            [my jget scalableListener] scale [my jget ratio]
                        } else {
                            my jset ratio 1.0
                            [my jget scalableListener] scale [my jget ratio]
                        }
                    } else {
                        if {[expr {[expr {double($aLastWidth)}] > [my jget scaleLargestTo]}]} {
                            my jset displayRatio [expr {[my jget scaleLargestTo] / [expr {double($aLastWidth)}]}]
                            my jset ratio [expr {[expr {double($aLastWidth)}] / [my jget scaleLargestTo]}]
                            $stringMaker delete 0 [$stringMaker length]
                            [my jget logUtil] putF [[[$stringMaker append [my jget ADJUSTING_FOR_SCALING_IN_LANDSCAPE]] appendfloat [my jget displayRatio]] toString] [self] [[my jget commonStrings] jget UPDATE]
                            set aLastWidth [jint [jd2i ([expr {[expr {double($aLastWidth)}] * [my jget displayRatio]}])]]
                            set aLastHeight [jint [jd2i ([expr {[expr {double($aLastHeight)}] * [my jget displayRatio]}])]]
                            [my jget scalableListener] scale [my jget ratio]
                        } else {
                            my jset ratio 1.0
                            [my jget scalableListener] scale [my jget ratio]
                        }
                    }
                }
                $stringMaker delete 0 [$stringMaker length]
                [my jget logUtil] putF [[[[[[$stringMaker append [my jget UPDATE_FROM_ORIENTATION_CHANGE]] append [my jget LAST_WIDTH]] appendint $aLastWidth] append [my jget LAST_HEIGHT]] appendint $aLastHeight] toString] [self] [[my jget commonStrings] jget UPDATE]
                my jset xOffset [jint [expr {$aFullWidth - $aLastWidth}]]
                my jset yOffset [jint [expr {$aFullHeight - $aLastHeight}]]
                my jset left [[my jget scalableListener] getLeft [my jget xOffset]]
                my jset top [[my jget scalableListener] getTop [my jget yOffset]]
                [my jget full] set [my jget WIDTH] $aFullWidth
                [my jget full] set [my jget HEIGHT] $aFullHeight
                [my jget last] set [my jget WIDTH] $aLastWidth
                [my jget lastHalf] set [my jget WIDTH] ([expr {[[my jget last] get [my jget WIDTH]] >> 1}])
                [my jget last] set [my jget HEIGHT] $aLastHeight
                [my jget lastHalf] set [my jget HEIGHT] ([expr {[[my jget last] get [my jget HEIGHT]] >> 1}])
                [::SWTJOGLProcessor::getInstance] setCustom $aLastWidth $aLastHeight [my jget ratio]
                my add [[my jget commonStrings] jget UPDATE]
            }
        }
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        return [my toStringAppend $stringBuffer]
    }
    

    method toStringAppend {stringBuffer} {
        $stringBuffer append [my jget DISPLAY_INFO]
        $stringBuffer append [my jget FULL]
        $stringBuffer append [[my jget commonLabels] jget WIDTH_LABEL]
        $stringBuffer appendint [[my jget full] get [my jget WIDTH]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [my jget FULL]
        $stringBuffer append [[my jget commonLabels] jget HEIGHT_LABEL]
        $stringBuffer appendint [[my jget full] get [my jget HEIGHT]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [my jget LAST]
        $stringBuffer append [[my jget commonLabels] jget WIDTH_LABEL]
        $stringBuffer appendint [[my jget last] get [my jget WIDTH]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [my jget LAST]
        $stringBuffer append [[my jget commonLabels] jget HEIGHT_LABEL]
        $stringBuffer appendint [[my jget last] get [my jget HEIGHT]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [my jget LAST_HALF]
        $stringBuffer append [[my jget commonLabels] jget WIDTH_LABEL]
        $stringBuffer appendint [[my jget lastHalf] get [my jget WIDTH]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [my jget LAST_HALF]
        $stringBuffer append [[my jget commonLabels] jget HEIGHT_LABEL]
        $stringBuffer appendint [[my jget lastHalf] get [my jget HEIGHT]]
        $stringBuffer append [[my jget commonSeps] jget SPACE]
        $stringBuffer append [expr {[my isPortrait] ? [my jget PORTRAIT] : [my jget LANDSCAPE]}]
        return [$stringBuffer toString]
    }
    

    method getTop {} {
        return [my jget top]
    }
    

    method getLeft {} {
        return [my jget left]
    }
    

    method getLastWidth {} {
        return [[my jget last] get [my jget WIDTH]]
    }
    

    method getLastHeight {} {
        return [[my jget last] get [my jget HEIGHT]]
    }
    

    method getLastHalfWidth {} {
        return [[my jget lastHalf] get [my jget WIDTH]]
    }
    

    method getLastHalfHeight {} {
        return [[my jget lastHalf] get [my jget HEIGHT]]
    }
    

    method getCustomLastWidth {} {
        return [[my jget last] get [my jget CUSTOM_WIDTH]]
    }
    

    method getCustomLastHeight {} {
        return [[my jget last] get [my jget CUSTOM_HEIGHT]]
    }
    

    method getRawLastWidth {} {
        return [[my jget last] get [my jget WIDTH]]
    }
    

    method getRawLastHeight {} {
        return [[my jget last] get [my jget HEIGHT]]
    }
    

    method setCustom {width height} {
        [my jget last] set [my jget CUSTOM_WIDTH] $width
        [my jget lastHalf] set [my jget CUSTOM_WIDTH] ([expr {[[my jget last] get [my jget CUSTOM_WIDTH]] >> 1}])
        [my jget last] set [my jget CUSTOM_HEIGHT] $height
        [my jget lastHalf] set [my jget CUSTOM_HEIGHT] ([expr {[[my jget last] get [my jget CUSTOM_HEIGHT]] >> 1}])
    }
    

    method setScalableListener {scalableListener} {
        my jset scalableListener $scalableListener
    }
    

    method getScalableListener {} {
        return [my jget scalableListener]
    }
    

    method getRatio {} {
        return [my jget ratio]
    }
    

    method getDisplayRatio {} {
        return [my jget displayRatio]
    }
    

    method setOffset {left top} {
        my jset left $left
    }
    

    method getxOffset {} {
        return [my jget xOffset]
    }
    

    method getyOffset {} {
        return [my jget yOffset]
    }
}

namespace eval ::DisplayInfoSingleton {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::DisplayInfoSingleton new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::DisplayInfoSingleton::staticGet_SINGLETON]
    }
}


