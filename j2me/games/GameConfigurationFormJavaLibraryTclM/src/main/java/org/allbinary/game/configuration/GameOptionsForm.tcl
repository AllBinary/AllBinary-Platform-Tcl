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

oo::class create ::GameOptionsForm {
    superclass ::CommandForm
}

oo::define ::GameOptionsForm {
    method initFields_GameOptionsForm {} {
        my jset meUtil {}
        my jset meUtil [::MIDPUtil::getInstance]
        return
    }
    

    constructor {commandListener title backgrounBasicColor foregroundBasicColor} {
        next $commandListener $title $backgrounBasicColor $foregroundBasicColor
        my initFields_GameOptionsForm
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my addConfiguration
        set gameFeatureFormUtil [::GameFeatureFormUtil::getInstance]
        $gameFeatureFormUtil addChoiceGroup [self] [[::GameFeatureChoiceGroups::getExclusiveInstance] get] [::Choice::staticGet_EXCLUSIVE]
        $gameFeatureFormUtil addChoiceGroup [self] [[::GameFeatureChoiceGroups::getMultipleInstance] get] [::Choice::staticGet_MULTIPLE]
        my initCommands $commandListener
        my setItemStateListener [::GameFeatureItemStateListener new [self]]
        my addTextFieldsIfSimulated
    }
    

    method closeClientInformation {abeClientInformation} {
        next
        my save $abeClientInformation
    }
    

    method addTextFieldsIfSimulated {} {
        set key [[::OrientationData::getInstance] jget ORIENTATION_SENSOR_INPUT]
        set hashtable [[::GameFeatureChoiceGroups::getExclusiveInstance] get]
        if {[expr {$hashtable ne {}}]} {
            set listCanBeNull [$hashtable get $key]
            if {[expr {$listCanBeNull ne {}}]} {
                set list $listCanBeNull
                if {[$list contains [[::SensorFeatureFactory::getInstance] jget SIMULATED_ORIENTATION_SENSORS]]} {
                    my addTextFields
                }
            }
        }
    }
    

    method addTextFields {} {
        set hashtable [::GameConfigurationTextInput::getHashtable]
        set size [$hashtable size]
        set objectArray [[::HashtableUtil::getInstance] getKeysAsArray $hashtable]
        set gameConfigurationTextInput {}
        set textField {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameConfigurationTextInput [$hashtable get [$objectArray get $index]]
            set textField [::TextField new [$gameConfigurationTextInput getLabel] [$gameConfigurationTextInput getText] 30 [::TextField::staticGet_ANY]]
            [my jget meUtil] appendItem [self] $textField
        }
    }
    

    method addConfiguration {} {
        set METHOD_NAME "addConfiguration"
        set NAME "Name: "
        set list [[::GameConfigurationSingleton::getInstance] getOptionsBasicArrayList]
        set GAUGE_CHANGE [[::MyCommandsFactory::getInstance] jget GAUGE_CHANGE]
        set stringMaker [::StringMaker new]
        set size [$list size]
        set gameConfiguration {}
        set gauge {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameConfiguration [[$list jget objectArray] get $index]
            $stringMaker delete 0 [$stringMaker length]
            [my jget logUtil] putF [[[$stringMaker append $NAME] append [$gameConfiguration toString]] toString] [self] $METHOD_NAME
            set gauge [::GameConfigurationGauge new $gameConfiguration]
            $gauge setDefaultCommand $GAUGE_CHANGE
            $gauge setItemCommandListener [::GameFeatureItemCommandListener new [self]]
            [my jget meUtil] appendItem [self] $gauge
        }
    }
    

    method initCommands {cmdListener} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        my removeAllCommands
        my addCommand [$gameCommandsFactory jget CLOSE_OPTIONS]
        my addCommand [$gameCommandsFactory jget DEFAULT_OPTIONS]
        my setCommandListener $cmdListener
    }
    

    method save {abeClientInformation} {
        set size [my size]
        set item {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set item [my get $index]
            if {[jinstanceof $item ::GameConfigurationGauge]} {
                [::GameConfigurationUtil::getInstance] update $item
            } elseif {[jinstanceof $item ::TextField]} {
                ::GameConfigurationTextInput::update $item
            }
        }
        [::GameConfigurationUtil::getInstance] updateCompetitionValue
        set hashtable [[::StdUtil::getInstance] createHashtable]
        set SCALE [[::GameConfigurationCentral::getInstance] jget SCALE]
        $hashtable put [$SCALE getName] [jstr [[$SCALE getValue] intValue]]
        set keyValuePersistance [::GameConfigurationPersistanceSingleton::getInstance]
        $keyValuePersistance clear
        $keyValuePersistance loadAll $abeClientInformation
        set list [$keyValuePersistance getIds]
        $keyValuePersistance save $abeClientInformation $hashtable
        set size2 [$list size]
        set integer {}
        for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
            set integer [[$list jget objectArray] get $index]
            $keyValuePersistance delete $abeClientInformation [$integer intValue]
        }
    }
}

namespace eval ::GameOptionsForm {
}


