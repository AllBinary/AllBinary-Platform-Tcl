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

oo::class create ::SaveGameForm {
    superclass ::CommandForm
}

oo::define ::SaveGameForm {
    method initFields_SaveGameForm {} {
        my jset meUtil {}
        my jset meUtil [::MIDPUtil::getInstance]
        return
    }
    
    
    

    constructor {commandListener title backgrounBasicColor foregroundBasicColor} {
        next $commandListener $title $backgrounBasicColor $foregroundBasicColor
        my initFields_SaveGameForm
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        set timeString [jstr [[::ABSystemWrapper::getInstance] currentTimeMillis]]
        [my jget meUtil] appendItem [self] [::TextField new "Name: " $timeString 30 [::TextField::staticGet_ANY]]
        my initCommands $commandListener
    }
    

    method initCommands {cmdListener} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        my removeAllCommands
        my addCommand [$gameCommandsFactory jget SAVE]
        my addCommand [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS]
        my setCommandListener $cmdListener
    }
}

namespace eval ::SaveGameForm {
    variable FORMValue {}
    variable FORMSet 0
    proc staticGet_FORM {} {
        variable FORMValue
        variable FORMSet
        if {!$FORMSet} {
            set FORMSet 1
            set FORMValue [::CommandForm::getNullCommandForm]
        }
        return $FORMValue
    }
    proc staticSet_FORM {value} {
        variable FORMValue
        variable FORMSet
        set FORMSet 1
        set FORMValue $value
    }
    proc createForm {commandListener title backgrounBasicColor foregroundBasicColor} {
        ::SaveGameForm::staticSet_FORM [::SaveGameForm new $commandListener $title $backgrounBasicColor $foregroundBasicColor]
        return [::SaveGameForm::staticGet_FORM]
    }
    proc getInstance {} {
        return [::SaveGameForm::staticGet_FORM]
    }
}


