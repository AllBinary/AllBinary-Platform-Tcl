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
# package org.allbinary.game.score.displayable

oo::class create ::HighScoreTextBox {
    superclass ::CustomTextBox
}

oo::define ::HighScoreTextBox {
    method initFields_HighScoreTextBox {} {
        my jset virtualKeyboardEventHandler {}
        my jset highScoreUtil {}
        my jset pleaseWait {}
        my jset paintable {}
        my jset submitted false
        my jset virtualKeyboardEventHandler [::VirtualKeyboardEventHandler::getInstance]
        
        my jset pleaseWait [::SimpleTextPaintable new [[my jget commonStrings] jget PLEASE_WAIT] [[::BasicColorFactory::getInstance] jget WHITE]]
        my jset paintable [::NullPaintable::getInstance]
        my jset submitted false
        return
    }
    

    constructor {highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore backgrounBasicColor foregroundBasicColor} {
        next $cmdListener "New High Score Enter Name:" $name 12 [::TextField::staticGet_ANY] [::Font::getDefaultFont] $backgrounBasicColor $foregroundBasicColor
        my initFields_HighScoreTextBox
        my jset highScoreUtil [::HighScoreUtil new $highScoresFactoryInterface $highScoresHelper $abeClientInformation $gameInfo $cmdListener $name $highScore]
        set operatingSystemInterface [[::OperatingSystemFactory::getInstance] getOperatingSystemInstance]
        if {[$operatingSystemInterface isOverScan]} {
            set username [[::InApplicationPurchaseFactory::getInstance] getUserName]
            [my getTextFieldItem] setString $username
        }
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        [::PostGameCommandFactory::getInstance] addCommands [self]
        my addCommand [::HighScoreUtil::staticGet_SUBMIT_TEXTBOX_COMMAND]
        my setCommandListener $cmdListener
    }
    

    method open {} {
        [my jget virtualKeyboardEventHandler] open
        my jset paintable [::NullPaintable::getInstance]
        next
    }
    

    method close {} {
        [my jget virtualKeyboardEventHandler] close
        my jset paintable [my jget pleaseWait]
        [my jget repaintBehavior] onChangeRepaint [self]
        next
        my removeCommand [::HighScoreUtil::staticGet_SUBMIT_TEXTBOX_COMMAND]
        my update
        if {[my jget submitted]} {
            [my jget highScoreUtil] saveHighScore
        } else {
        }
        my jset paintable [::NullPaintable::getInstance]
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method update {} {
        set name [[my getTextFieldItem] getString]
        [my jget highScoreUtil] update $name
        next
    }
    

    method paint {graphics} {
        next $graphics
        [my jget paintable] paint $graphics
    }
    

    method saveHighScore {} {
        [my jget highScoreUtil] saveHighScore
    }
    

    method submit {} {
        [my jget highScoreUtil] submit [self]
    }
}

namespace eval ::HighScoreTextBox {
}


