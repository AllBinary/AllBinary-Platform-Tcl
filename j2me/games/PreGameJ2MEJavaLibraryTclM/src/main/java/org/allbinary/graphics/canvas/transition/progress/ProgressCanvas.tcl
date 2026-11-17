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
# package org.allbinary.graphics.canvas.transition.progress

oo::class create ::ProgressCanvas {
    superclass ::RunnableCanvas
}

oo::define ::ProgressCanvas {
    method initFields_ProgressCanvas {} {
        my jset hasPainted false
        my jset backgroundBasicColor {}
        my jset GAUGE_PAINTABLE {}
        my jset maxValue 0.0
        my jset gauge {}
        my jset TEXT {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset allbinaryMidlet {}
        my jset value 0.0
        my jset text {}
        my jset background false
        my jset paintable {}
        my jset inProgress false
        my jset IN_GAME_PROCESSOR {}
        my jset inGameProcessor {}
        my jset progressEndListener {}
        my jset backgroundLabel {}
        my jset START_BACKGROUND {}
        my jset ADD_PORTION {}
        my jset ADD_EARLY_PORTION {}
        my jset hasPainted false
        
        my jset GAUGE_PAINTABLE [::ProgressPaintable new [self]]
        my jset maxValue 100.0
        
        my jset TEXT [[my jget commonStrings] jget LOADING]
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset allbinaryMidlet [::AllBinaryMidlet::getNullInstance]
        my jset value 0.0
        my jset text [my jget TEXT]
        my jset background true
        my jset paintable [my jget GAUGE_PAINTABLE]
        my jset inProgress false
        my jset IN_GAME_PROCESSOR [::Processor new]
        my jset inGameProcessor [::Processor::getInstance]
        my jset progressEndListener [::ProgressEndListener::staticGet_instance]
        my jset backgroundLabel "Background AI Game Loading..."
        my jset START_BACKGROUND "startBackground"
        my jset ADD_PORTION "addPortion"
        my jset ADD_EARLY_PORTION "addEarlyPortion"
        return
    }
    

    constructor {title backgroundBasicColor foregroundBasicColor} {
        next [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER] [[::CanvasStrings::getInstance] jget EMPTY_CHILD_NAME_LIST] false
        my initFields_ProgressCanvas
        my jset backgroundBasicColor $backgroundBasicColor
        my jset gauge [::ABCustomGaugeItem new [[::StringUtil::getInstance] jget EMPTY_STRING] [jint [jd2i [my jget maxValue]]] 0 $backgroundBasicColor $foregroundBasicColor]
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        [my jget gauge] setHeight [expr {[$font getHeight] + 2}]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method init {gameMidlet} {
        my jset allbinaryMidlet $gameMidlet
    }
    

    method update {graphics} {
    }
    

    method initCommands {cmdListener} {
    }
    

    method getMaxValue {} {
        return [my jget maxValue]
    }
    

    method start {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget START_METHOD_NAME]
        my setBackground true
        [my jget gauge] setHeight 30
        [my jget gauge] setLabel [[my jget commonStrings] jget PLEASE_WAIT]
        my setText [my jget TEXT]
        my setValue 0
        my jset inGameProcessor [::Processor::getInstance]
        my jset paintable [my jget GAUGE_PAINTABLE]
        my jset inProgress true
    }
    

    method startBackground {background} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [my jget START_BACKGROUND]
        my setBackground $background
        my jset myFontProcessor [my jget updateMyFontProcessor]
        [my jget gauge] setLabel [my jget backgroundLabel]
        my setText [my jget TEXT]
        my setValue 0
        my jset inGameProcessor [::Processor::getInstance]
        my jset paintable [my jget GAUGE_PAINTABLE]
    }
    

    method endActual {} {
        [my jget allbinaryMidlet] commandAction [[::GameCommandsFactory::getInstance] jget SHOW_GAME_CANVAS] [::NullCanvas::staticGet_NULL_CANVAS]
        my jset inProgress false
        my inGame
    }
    

    method inGame {} {
        [my jget progressEndListener] onEndEvent
        my jset inGameProcessor [my jget IN_GAME_PROCESSOR]
    }
    

    method end {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget END_METHOD_NAME]
        [my jget gauge] setValue [my getMaxValue]
        my endActual
        my jset paintable [::NullPaintable::getInstance]
    }
    

    method endFromInitialLazyLoadingComplete {} {
        [my jget progressEndListener] onEndEvent
        [my jget gauge] setValue [my getMaxValue]
        my jset inGameProcessor [my jget IN_GAME_PROCESSOR]
    }
    

    method isInGame {} {
        if {[expr {[my jget inGameProcessor] eq [my jget IN_GAME_PROCESSOR]}]} {
            return true
        }
        return false
    }
    

    method endIfPaintedSinceStart {} {
    }
    

    method addEarlyPortion {value text index} {
        my setText [[[[::StringMaker new] append $text] append [[[::SmallIntegerSingletonFactory::getInstance] getAt $index] toString]] toString]
        [my jget gauge] setValue [expr {[[my jget gauge] getValue] + [expr {[my getMaxValue] / [expr {double($value)}]}]}]
    }
    

    method addPortion {value text index} {
        my setText [[[[::StringMaker new] append $text] append [[[::SmallIntegerSingletonFactory::getInstance] getAt $index] toString]] toString]
        ::PreLogUtil::put [my jget text] [self] [my jget ADD_PORTION]
        [my jget gauge] setValue [expr {[[my jget gauge] getValue] + [expr {[my getMaxValue] / [expr {double($value)}]}]}]
    }
    

    method addNormalPortion {value text} {
        if {[expr {[my jget text] ne $text}]} {
            ::PreLogUtil::put $text [self] [my jget ADD_PORTION]
        }
        my setText $text
        [my jget gauge] setValue [expr {[[my jget gauge] getValue] + [expr {[my getMaxValue] / [expr {double($value)}]}]}]
    }
    

    method setValue {value} {
        my jset value [expr {double($value)}]
        [my jget gauge] setValue [expr {double($value)}]
    }
    

    method paint {graphics} {
        [my jget paintable] paint $graphics
    }
    

    method paint2 {graphics} {
        [my jget myFontProcessor] process $graphics
        $graphics setColor [[my jget backgroundBasicColor] intValue]
        $graphics fillRect 0 0 [[my jget displayInfo] getLastWidth] [[my jget displayInfo] getLastHeight]
        [my jget gauge] paintXY $graphics 0 0
        my jset hasPainted true
    }
    

    method paintThreed {graphics} {
    }
    

    method getValue {} {
        return [my jget value]
    }
    

    method setText {text} {
        my jset text $text
    }
    

    method getText {} {
        return [my jget text]
    }
    

    method setBackground {background} {
        my jset background $background
    }
    

    method isBackground {} {
        return [my jget background]
    }
}

namespace eval ::ProgressCanvas {
}


