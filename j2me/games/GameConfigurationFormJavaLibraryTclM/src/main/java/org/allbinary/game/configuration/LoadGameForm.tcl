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

oo::class create ::LoadGameForm {
    superclass ::CommandForm
}

oo::define ::LoadGameForm {
    method initFields_LoadGameForm {} {
        my jset meUtil {}
        my jset areChoices false
        my jset meUtil [::MIDPUtil::getInstance]
        my jset areChoices false
        return
    }
    

    constructor {commandListener title backgrounBasicColor foregroundBasicColor} {
        next $commandListener $title $backgrounBasicColor $foregroundBasicColor
        my initFields_LoadGameForm
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my update
        my initCommands $commandListener
    }
    

    method initCommands {cmdListener} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        my removeAllCommands
        my addCommand [$gameCommandsFactory jget LOAD_FILE]
        my addCommand [$gameCommandsFactory jget DELETE_FILE]
        my addCommand [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS]
        my setCommandListener $cmdListener
    }
    

    method update {} {
        set list [[::GamePersistanceSingleton::getInstance] getIds]
        my deleteAll
        if {[expr {[$list size] > 0}]} {
            my add $list "Select A Saved Game" [::Choice::staticGet_EXCLUSIVE]
            my jset areChoices true
        } else {
            [my jget meUtil] appendItem [self] [::StringItem new "No Saved Games" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Item::staticGet_PLAIN]]
            my jset areChoices false
        }
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
        set METHOD_NAME "getChoiceGroup"
        set ADDING_CHOICE "Adding Choice: "
        set choiceGroup [::ChoiceGroup new $name $option [[::StringUtil::getInstance] getArrayInstance] [::NullImage::staticGet_NULL_IMAGE_ARRAY]]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [[$list jget objectArray] get $index]
            [my jget logUtil] putF [[[[::StringMaker new] append $ADDING_CHOICE] append [$anyType toString]] toString] [self] $METHOD_NAME
            $choiceGroup append [$anyType toString] [::NullImage::staticGet_NULL_IMAGE]
        }
        return $choiceGroup
    }
    

    method getSelectedId {} {
        if {[my jget areChoices]} {
            set choiceGroup [my get 0]
            return [$choiceGroup getSelectedIndex]
        } else {
            return [expr {-1}]
        }
    }
    

    method getSelectedText {} {
        if {[my jget areChoices]} {
            set choiceGroup [my get 0]
            set value [[jstr [$choiceGroup getString [$choiceGroup getSelectedIndex]]] intValue]
            return $value
        } else {
            return [expr {-1}]
        }
    }
}

namespace eval ::LoadGameForm {
}


