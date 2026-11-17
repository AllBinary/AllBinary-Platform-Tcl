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
# package org.allbinary.game.commands

oo::class create ::GameCommandsFactory {
    superclass ::JObject
}

oo::define ::GameCommandsFactory {
    method initFields_GameCommandsFactory {} {
        my jset TOGGLE_FULLSCREEN {}
        my jset TOGGLE_KEYBOARD {}
        my jset SET_MENU_DISPLAYABLE {}
        my jset APPLICATION_UPDATE {}
        my jset DISPLAY_ABOUT {}
        my jset OPEN_WEB_URL {}
        my jset CLOSE_OPTIONS {}
        my jset DISPLAY_OPTIONS {}
        my jset START_TRACE {}
        my jset STOP_TRACE {}
        my jset DEFAULT_OPTIONS {}
        my jset SHOW_GAME_CANVAS {}
        my jset CLOSE_AND_SHOW_GAME_CANVAS {}
        my jset QUIT_COMMAND {}
        my jset RESTART_COMMAND {}
        my jset DISPLAY_SAVE_FORM {}
        my jset SAVE {}
        my jset DISPLAY_LOAD_FORM {}
        my jset LOAD_FILE {}
        my jset DELETE_FILE {}
        my jset EXIT_COMMAND {}
        my jset EXIT_WITHOUT_PROGRESS_COMMAND {}
        my jset START_COMMAND {}
        my jset CONTINUE_COMMAND {}
        my jset SELECT_COMMAND {}
        my jset FEATURE_UPDATE {}
        my jset BUY_COMMAND {}
        my jset TOGGLE_FULLSCREEN [::Command new "Toggle FullScreen" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset TOGGLE_KEYBOARD [::Command new "Keyboard" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset SET_MENU_DISPLAYABLE [::Command new "Set Menu Displayable" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset APPLICATION_UPDATE [::Command new [[::CommonStrings::getInstance] jget UPDATE] [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset DISPLAY_ABOUT [::Command new [[::CanvasStrings::getInstance] jget ABOUT] [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        my jset OPEN_WEB_URL [::Command new "Open Web URL" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        my jset CLOSE_OPTIONS [::Command new "Back" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset DISPLAY_OPTIONS [::Command new [[::CanvasStrings::getInstance] jget OPTIONS] [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 2]
        my jset START_TRACE [::Command new "Start Trace" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset STOP_TRACE [::Command new "Stop Trace" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset DEFAULT_OPTIONS [::Command new "Default" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset SHOW_GAME_CANVAS [::Command new "Back to Game" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset CLOSE_AND_SHOW_GAME_CANVAS [::Command new "Back" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset QUIT_COMMAND [::Command new "Quit" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_STOP] 1]
        my jset RESTART_COMMAND [::Command new "Restart" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 0]
        my jset DISPLAY_SAVE_FORM [::Command new "Save To" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 3]
        my jset SAVE [::Command new "Save" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 3]
        my jset DISPLAY_LOAD_FORM [::Command new "Load" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 3]
        my jset LOAD_FILE [::Command new "Load File" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 3]
        my jset DELETE_FILE [::Command new "Delete File" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset EXIT_COMMAND [::Command new "Exit" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_EXIT] 2]
        my jset EXIT_WITHOUT_PROGRESS_COMMAND [::Command new "Exit Without Progress" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_EXIT] 2]
        my jset START_COMMAND [::Command new [[::CommonStrings::getInstance] jget START] [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset CONTINUE_COMMAND [::Command new "Continue" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset SELECT_COMMAND [::Command new "Select" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset FEATURE_UPDATE [::Command new "Feature Update" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset BUY_COMMAND [::Command new "BUY" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameCommandsFactory
    }
}

namespace eval ::GameCommandsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::GameCommandsFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameCommandsFactory::staticSet_instance [::GameCommandsFactory new]
        }
        return [::GameCommandsFactory::staticGet_instance]
    }
}


