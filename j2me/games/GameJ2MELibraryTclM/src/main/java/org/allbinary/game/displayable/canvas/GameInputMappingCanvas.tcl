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

oo::class create ::GameInputMappingCanvas {
    superclass ::GameCommandCanvas
}

oo::define ::GameInputMappingCanvas {
    method initFields_GameInputMappingCanvas {} {
        my jset paintable {}
        my jset helpPaintable {}
        my jset colorFillPaintable {}
        my jset inputMapping {}
        my jset NONE {}
        my jset abeClientInformation {}
        my jset selectedGameKey {}
        my jset selectedInput {}
        my jset inputFactory {}
        
        
        
        
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        
        my jset selectedGameKey [my jget NONE]
        my jset selectedInput [my jget NONE]
        my jset inputFactory [::InputFactory::getInstance]
        return
    }
    

    constructor {abeClientInformation commandListener allBinaryGameLayerManager helpPaintable} {
        next $commandListener [::GameInputMappingCanvas::staticGet_NAME] [$allBinaryGameLayerManager getBackgroundBasicColor] [$allBinaryGameLayerManager getForegroundBasicColor]
        my initFields_GameInputMappingCanvas
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        if {[expr {$helpPaintable eq {}}]} {
            error [jexception Exception "Help Paintable Exception"]
        }
        my jset abeClientInformation $abeClientInformation
        my jset helpPaintable $helpPaintable
        my jset inputMapping [[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance]
        my jset paintable [::ProcessPaintable new]
        my jset colorFillPaintable [[::ColorFillPaintableFactory::getInstance] getInstance [$allBinaryGameLayerManager getBackgroundBasicColor] false]
    }
    

    method close {} {
        next
        [my jget paintable] process
        my jset selectedGameKey [my jget NONE]
        my jset selectedInput [my jget NONE]
        my update
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommand [[::GameCommandsFactory::getInstance] jget CLOSE_AND_SHOW_GAME_CANVAS]
        my addCommand [::GameInputMappingCanvas::staticGet_DEFAULT]
        my addCommand [::GameInputMappingInstructionsCanvas::staticGet_DISPLAY]
        my setCommandListener $cmdListener
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
        my addGameKey $keyCode false
        next $keyCode 0
    }
    

    method addGameKey {keyCode repeated} {
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append "Raw Device Key Code: "] append [::Integer::toHexString $keyCode]] toString] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT]
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [self] $keyCode]
            set input [[my jget inputFactory] getInstanceById $keyCode]
            my processInputMapping $gameKey $input
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
    

    method processInputMapping {gameKey input} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Start Passed GameKey: "
        $stringBuffer append [[my jget stringUtil] toString1 $gameKey]
        $stringBuffer append " Input: "
        $stringBuffer append [[my jget stringUtil] toString1 $input]
        [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget PROCESS]
        if {[expr {[my jget selectedGameKey] ne [my jget NONE]}]} {
            my gameActionCrud $gameKey $input
        } else {
            my setSelectedAction $gameKey
        }
    }
    

    method setSelectedAction {gameKey} {
        [my jget logUtil] putF [[[[::StringMaker new] append "Selected GameKey: "] append [[my jget stringUtil] toString1 $gameKey]] toString] [self] "setSelectedAction"
        my jset selectedGameKey $gameKey
        my jset selectedInput [my jget NONE]
        [my jget helpPaintable] update [my jget selectedGameKey] [my jget selectedInput]
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method gameActionCrud {gameKey input} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Start GameKey: "
        $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedGameKey]]
        $stringBuffer append " Input: "
        $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedInput]]
        [my jget logUtil] putF [$stringBuffer toString] [self] "gameActionCrud"
        if {[expr {[my jget selectedInput] eq [my jget NONE]}]} {
            set list [[[my jget inputMapping] getInputMapping] getMappedInput [my jget selectedGameKey]]
            set isInputAlreadyMappedToSelectedAction [$list contains $input]
            if {$isInputAlreadyMappedToSelectedAction} {
                [my jget logUtil] putF [[[[::StringMaker new] append "Already Mapped Input: "] append [[my jget stringUtil] toString1 $input]] toString] [self] "gameActionCrud"
                my jset selectedInput $input
                [my jget helpPaintable] update [my jget selectedGameKey] [my jget selectedInput]
                [my jget repaintBehavior] onChangeRepaint [self]
            } else {
                my addNewMapping $gameKey $input
            }
        } elseif {[[my jget inputMapping] isDelete $input]} {
            my deleteCurrentMapping
        } else {
            my setSelectedAction $gameKey
        }
    }
    

    method addNewMapping {gameKey input} {
        set METHOD_NAME "addNewMapping"
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] $METHOD_NAME
        set isInputAlreadyMapped [[[my jget inputMapping] getInputMapping] isMapped $input]
        if {[expr {[expr {!$isInputAlreadyMapped}] && [expr {![[my jget inputMapping] isSystemInput $input]}]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append "Add Key Mapping : GameKey: "
            $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedGameKey]]
            $stringBuffer append " Input: "
            $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedInput]]
            [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
            [[my jget inputMapping] getInputMapping] add [my jget selectedGameKey] $input
            my jset selectedInput $input
            my update
        } else {
            [my jget logUtil] putF "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to" [self] $METHOD_NAME
            my setSelectedAction $gameKey
        }
    }
    

    method deleteCurrentMapping {} {
        set METHOD_NAME "deleteCurrentMapping"
        set list [[[my jget inputMapping] getInputMapping] getMappedInput [my jget selectedGameKey]]
        if {[expr {[$list size] > 1}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append "Start GameKey: "
            $stringBuffer append "Remove Key Mapping: GameKey: "
            $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedGameKey]]
            $stringBuffer append " Input: "
            $stringBuffer append [[my jget stringUtil] toString1 [my jget selectedInput]]
            [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
            [[my jget inputMapping] getInputMapping] remove [my jget selectedGameKey] [my jget selectedInput]
            my jset selectedInput [my jget NONE]
            my update
        } else {
            [my jget logUtil] putF "Can't Remove Last Key Mapping" [self] $METHOD_NAME
        }
    }
    

    method setDefault {} {
        [my jget inputMapping] setDefault [my jget abeClientInformation]
        [my jget helpPaintable] update [my jget NONE] [my jget NONE]
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method update {} {
        [my jget inputMapping] update [my jget abeClientInformation]
        [my jget helpPaintable] update [my jget selectedGameKey] [my jget selectedInput]
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method paint {graphics} {
        [my jget colorFillPaintable] paint $graphics
        [my jget helpPaintable] paint $graphics
        [my jget paintable] paint $graphics
        next $graphics
    }
}

namespace eval ::GameInputMappingCanvas {
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "GameInputMappingCanvas"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
    variable DISPLAYValue {}
    variable DISPLAYSet 0
    proc staticGet_DISPLAY {} {
        variable DISPLAYValue
        variable DISPLAYSet
        if {!$DISPLAYSet} {
            set DISPLAYSet 1
            set DISPLAYValue [::Command new "Controls" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        }
        return $DISPLAYValue
    }
    proc staticSet_DISPLAY {value} {
        variable DISPLAYValue
        variable DISPLAYSet
        set DISPLAYSet 1
        set DISPLAYValue $value
    }
    variable DEFAULTValue {}
    variable DEFAULTSet 0
    proc staticGet_DEFAULT {} {
        variable DEFAULTValue
        variable DEFAULTSet
        if {!$DEFAULTSet} {
            set DEFAULTSet 1
            set DEFAULTValue [::Command new "Default" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        }
        return $DEFAULTValue
    }
    proc staticSet_DEFAULT {value} {
        variable DEFAULTValue
        variable DEFAULTSet
        set DEFAULTSet 1
        set DEFAULTValue $value
    }
}


