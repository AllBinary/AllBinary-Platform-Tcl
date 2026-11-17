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

oo::class create ::GameCommandCanvas {
    superclass ::MyCanvas
}

oo::define ::GameCommandCanvas {
    method initFields_GameCommandCanvas {} {
        my jset repaintProcessor {}
        my jset gameInputStrings {}
        my jset foregroundBasicColor {}
        my jset backgroundBasicColor {}
        my jset inputToGameKeyMapping {}
        my jset gameKeyFactory {}
        my jset gameKeyEventFactory {}
        my jset downGameKeyEventHandler {}
        my jset upGameKeyEventHandler {}
        my jset repaintBehavior {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset foregroundColor 0
        my jset backgroundColor 0
        my jset menuInputProcessor {}
        my jset menuPaintable {}
        my jset menuForm {}
        my jset isSingleKeyRepeatableProcessing false
        my jset fontHeight 0
        my jset repaintProcessor [[::ScreenRepaintProcessorFactory::getInstance] create [self]]
        my jset gameInputStrings [::GameInputStrings::getInstance]
        
        
        my jset inputToGameKeyMapping [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my jset gameKeyFactory [::GameKeyFactory::getInstance]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        my jset downGameKeyEventHandler [::DownGameKeyEventHandler::getInstance]
        my jset upGameKeyEventHandler [::UpGameKeyEventHandler::getInstance]
        
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        
        
        my jset menuInputProcessor [::NoMenuInputProcessor::getInstance]
        my jset menuPaintable [::NullPaintable::getInstance]
        my jset menuForm [::PaintableForm::getNullPaintableForm]
        my jset isSingleKeyRepeatableProcessing [[::Features::getInstance] isFeature [[::InputFeatureFactory::getInstance] jget SINGLE_KEY_REPEAT_PRESS]]
        my jset fontHeight 0
        return
    }
    

    constructor {cmdListener name backgroundBasicColor foregroundBasicColor} {
        next $name [[::CanvasStrings::getInstance] jget EMPTY_CHILD_NAME_LIST]
        my initFields_GameCommandCanvas
        my jset repaintBehavior [::RepaintBehavior::getInstance]
        my jset foregroundBasicColor $foregroundBasicColor
        my jset backgroundBasicColor $backgroundBasicColor
        my jset foregroundColor [[my jget foregroundBasicColor] intValue]
        my jset backgroundColor [[my jget backgroundBasicColor] intValue]
        my initCommands $cmdListener
        if {[expr {$cmdListener ne [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER]}]} {
            try {
                my initMenu
                [my jget repaintProcessor] process
            } on error {e} {
                error [jexception RuntimeException {}]
            }
        }
    }
    

    method updateMeasurement {graphics} {
        try {
            set font [$graphics getFont]
            [my jget logUtil] putF [[[[[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[my jget canvasStrings] jget FD_WIDTH]] appendint [jint [::MyFontProcessor::defaultCharWidth $font]]] append [[my jget canvasStrings] jget FD_HEIGHT]] appendint [jint [$font getHeight]]] toString] [self] [[my jget canvasStrings] jget UPDATE_MEASUREMENT]
            my jset fontHeight [$font getHeight]
            set rectangle [my createRectangle [[my jget menuForm] size]]
            [my jget menuForm] init $rectangle [[::FormTypeFactory::getInstance] jget VERTICAL_CENTER_FORM]
            my update
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT] $e
        }
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onDisplayChangeEvent {displayChangeEvent} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[::DisplayInfoSingleton::getInstance] toString]] toString] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT]
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommand [[::GameCommandsFactory::getInstance] jget CLOSE_AND_SHOW_GAME_CANVAS]
        my setCommandListener $cmdListener
    }
    

    method initMenu {} {
        set form [my createForm]
        my jset menuForm $form
        if {[expr {$form ne [::ScrollSelectionFormNoneFactory::getInstance]}]} {
            my setMenuInputProcessor [::ImmediateCommandFormInputProcessor new [::BasicArrayListD new] [expr {-1}] [self] $form]
            my jset menuPaintable [::FormPaintable new $form]
        }
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method createForm {} {
        set items [[::CommandTextItemArrayFactory new [::AllCommandsVisitor new]] getInstance [my getCommandStack] [my jget backgroundBasicColor] [my jget foregroundBasicColor]]
        set rectangle [my createRectangle [$items length]]
        return [::CommandCurrentSelectionFormFactory::getInstance [[::StringUtil::getInstance] jget EMPTY_STRING] $items $rectangle [[::FormTypeFactory::getInstance] jget VERTICAL_CENTER_FORM] 15 false [my jget backgroundBasicColor] [my jget foregroundBasicColor]]
    }
    

    method createRectangle {size} {
        set height [jint [expr {$size * [my jget fontHeight]}]]
        set startY [expr {([expr {[expr {[[my jget displayInfo] getLastHeight] * 2}] / 3}]) - $height}]
        set pointFactory [::PointFactory::getInstance]
        set rectangle [::Rectangle new [$pointFactory createXY 30 $startY] [expr {[[my jget displayInfo] getLastWidth] - 30}] $startY]
        return $rectangle
    }
    

    method open {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "open"
        [::BasicMotionGesturesHandler::getInstance] addListenerInterface [my getMenuInputProcessor]
        [::GameKeyEventHandler::getInstance] addListener [my getMenuInputProcessor]
        [::DisplayChangeEventHandler::getInstance] addListenerInterface [self]
    }
    

    method close {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CLOSE]
        [::BasicMotionGesturesHandler::getInstance] removeListener [my getMenuInputProcessor]
        [::GameKeyEventHandler::getInstance] removeListener [my getMenuInputProcessor]
        [::DisplayChangeEventHandler::getInstance] removeListener [self]
    }
    

    method update {} {
        [my jget repaintProcessor] process
    }
    

    method getSourceId {} {
        return [::GameCommandCanvas::staticGet_id]
    }
    

    method keyPressed {keyCode} {
        my keyPressedByDevice $keyCode 0
    }
    

    method keyReleased {keyCode} {
        my keyReleasedByDevice $keyCode 0
    }
    

    method keyRepeated {keyCode} {
        my keyRepeatedByDevice $keyCode 0
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonSeps::getInstance] jget SPACE]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget KEY_PRESSED]
        my addGameKeyEvent $keyCode 0 false
    }
    

    method keyReleasedByDevice {keyCode deviceId} {
        my removeGameKeyEvent $keyCode $deviceId false
    }
    

    method keyRepeatedByDevice {keyCode deviceId} {
        if {[my jget isSingleKeyRepeatableProcessing]} {
            my addGameKeyEvent $keyCode $deviceId true
        }
    }
    

    method addGameKeyEvent {keyCode deviceId repeated} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [self] $keyCode]
            if {[expr {$gameKey ne [[my jget gameKeyFactory] jget NONE]}]} {
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] $gameKey]
                [my jget downGameKeyEventHandler] fireEvent $gameKeyEvent
                [[my jget downGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            } else {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT]
            }
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
    

    method removeGameKeyEvent {keyCode deviceId repeated} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [self] $keyCode]
            if {[expr {$gameKey ne [[my jget gameKeyFactory] jget NONE]}]} {
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] $gameKey]
                [my jget upGameKeyEventHandler] fireEvent $gameKeyEvent
                [[my jget upGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            } else {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT]
            }
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT] $e
        }
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        [my jget menuPaintable] paint $graphics
        [my jget repaintBehavior] repaint [self]
    }
    

    method setMenuInputProcessor {menuInputProcessor} {
        my jset menuInputProcessor $menuInputProcessor
    }
    

    method getMenuInputProcessor {} {
        return [my jget menuInputProcessor]
    }
}

namespace eval ::GameCommandCanvas {
    variable idValue {}
    variable idSet 0
    proc staticGet_id {} {
        variable idValue
        variable idSet
        if {!$idSet} {
            set idSet 1
            set idValue 0
        }
        return $idValue
    }
    proc staticSet_id {value} {
        variable idValue
        variable idSet
        set idSet 1
        set idValue $value
    }
}


