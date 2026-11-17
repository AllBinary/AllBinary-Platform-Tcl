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

oo::class create ::InGameOptionsForm {
    superclass ::CommandForm
}

oo::define ::InGameOptionsForm {
    method initFields_InGameOptionsForm {} {
        return
    }
    

    constructor {commandListener title backgrounBasicColor foregroundBasicColor} {
        next $commandListener $title $backgrounBasicColor $foregroundBasicColor
        my initFields_InGameOptionsForm
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        set gameFeatureFormUtil [::GameFeatureFormUtil::getInstance]
        $gameFeatureFormUtil addChoiceGroup [self] [[::InGameFeatureChoiceGroups::getExclusiveInstance] get] [::Choice::staticGet_EXCLUSIVE]
        $gameFeatureFormUtil addChoiceGroup [self] [[::InGameFeatureChoiceGroups::getMultipleInstance] get] [::Choice::staticGet_MULTIPLE]
        my initCommands $commandListener
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommand [[::GameCommandsFactory::getInstance] jget CLOSE_AND_SHOW_GAME_CANVAS]
        my addCommand [::InGameOptionsForm::staticGet_DEFAULT]
        my setCommandListener $cmdListener
    }
}

namespace eval ::InGameOptionsForm {
    variable DISPLAYValue {}
    variable DISPLAYSet 0
    proc staticGet_DISPLAY {} {
        variable DISPLAYValue
        variable DISPLAYSet
        if {!$DISPLAYSet} {
            set DISPLAYSet 1
            set DISPLAYValue [::Command new "Options In Game" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        }
        return $DISPLAYValue
    }
    proc staticSet_DISPLAY {value} {
        variable DISPLAYValue
        variable DISPLAYSet
        set DISPLAYSet 1
        set DISPLAYValue $value
    }
    variable SAVEValue {}
    variable SAVESet 0
    proc staticGet_SAVE {} {
        variable SAVEValue
        variable SAVESet
        if {!$SAVESet} {
            set SAVESet 1
            set SAVEValue [::Command new "Save" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        }
        return $SAVEValue
    }
    proc staticSet_SAVE {value} {
        variable SAVEValue
        variable SAVESet
        set SAVESet 1
        set SAVEValue $value
    }
    variable DEFAULTValue {}
    variable DEFAULTSet 0
    proc staticGet_DEFAULT {} {
        variable DEFAULTValue
        variable DEFAULTSet
        if {!$DEFAULTSet} {
            set DEFAULTSet 1
            set DEFAULTValue [::Command new "Default" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
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


