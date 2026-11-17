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
# package org.allbinary.game.configuration

oo::class create ::GameDifficultyOptions {
    superclass ::CommandForm
}

oo::define ::GameDifficultyOptions {
    method initFields_GameDifficultyOptions {} {
        my jset meUtil {}
        my jset list {}
        my jset meUtil [::MIDPUtil::getInstance]
        
        return
    }
    

    constructor {commandListener title list backgrounBasicColor foregroundBasicColor} {
        next $commandListener $title $backgrounBasicColor $foregroundBasicColor
        my initFields_GameDifficultyOptions
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset list $list
        my update
        my initCommands $commandListener
        set gameDifficultyFactory [::GameDifficultyFactory::getInstance]
        my setSelectedId [$gameDifficultyFactory getLevel]
    }
    

    method open {} {
        next
    }
    

    method close {} {
        next
        my save
    }
    

    method save {} {
        set gameDifficultyFactory [::GameDifficultyFactory::getInstance]
        $gameDifficultyFactory setLevel [my getSelectedId]
    }
    

    method initCommands {cmdListener} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        my removeAllCommands
        my addCommand [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS]
        my setCommandListener $cmdListener
    }
    

    method update {} {
        my deleteAll
        my add [my jget list] "Difficulty" [::Choice::staticGet_EXCLUSIVE]
        next
    }
    

    method add {list name option} {
        set choiceGroup [my getChoiceGroup $list $name $option]
        if {[expr {[$list size] > 0}]} {
            $choiceGroup setSelectedIndex 0 true
        }
        [my jget meUtil] appendItem [self] $choiceGroup
    }
    

    method getChoiceGroup {list name option} {
        set METHOD_NAME "addChoiceGroup"
        set NAME "Adding Choice: "
        set choiceGroup [::ChoiceGroup new $name $option [[::StringUtil::getInstance] getArrayInstance] [::NullImage::staticGet_NULL_IMAGE_ARRAY]]
        set size [$list size]
        set anyType {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [[$list jget objectArray] get $index]
            [my jget logUtil] putF [[[[::StringMaker new] append $NAME] append [$anyType toString]] toString] [self] $METHOD_NAME
            $choiceGroup append [$anyType toString] [::NullImage::staticGet_NULL_IMAGE]
        }
        return $choiceGroup
    }
    

    method setSelectedId {id} {
        set choiceGroup [my get 0]
        $choiceGroup setSelectedIndex $id true
    }
    

    method getSelectedId {} {
        set choiceGroup [my get 0]
        return [$choiceGroup getSelectedIndex]
    }
    

    method getSelectedText {} {
        set choiceGroup [my get 0]
        set value [[jstr [$choiceGroup getString [$choiceGroup getSelectedIndex]]] intValue]
        return $value
    }
}

namespace eval ::GameDifficultyOptions {
}


