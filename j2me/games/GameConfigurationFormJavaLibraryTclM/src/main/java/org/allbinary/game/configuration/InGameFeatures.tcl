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

oo::class create ::InGameFeatures {
    superclass ::Init
}

oo::define ::InGameFeatures {
    method initFields_InGameFeatures {} {
        return
    }

    constructor {} {
        next
        my initFields_InGameFeatures
    }
    

    method init {} {
        set LABEL "Screen Buttons"
        set orientationData [::OrientationData::getInstance]
        set exclusiveOrientationSensorVector [[[::GameFeatureChoiceGroups::getExclusiveInstance] get] get [$orientationData jget ORIENTATION_SENSOR_INPUT]]
        set inGameFeatureChoiceGroups [::InGameFeatureChoiceGroups::getExclusiveInstance]
        if {[expr {$exclusiveOrientationSensorVector ne {}}]} {
            set inGameExclusiveOrientationSensorVectorCanBeNull [[$inGameFeatureChoiceGroups get] get [$orientationData jget ORIENTATION_SENSOR_INPUT]]
            if {[expr {$inGameExclusiveOrientationSensorVectorCanBeNull eq {}}]} {
                my addToInGameMenu
            } else {
                set inGameExclusiveOrientationSensorVector $inGameExclusiveOrientationSensorVectorCanBeNull
                if {[expr {[$inGameExclusiveOrientationSensorVector size] == 0}]} {
                    my addToInGameMenu
                }
            }
        }
        set features [::Features::getInstance]
        if {[expr {[expr {[$features isFeature [[::TouchFeatureFactory::getInstance] jget SHOW_SCREEN_BUTTONS]] || [$features isFeature [[::TouchFeatureFactory::getInstance] jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]]}] || [$features isFeature [[::TouchFeatureFactory::getInstance] jget HIDE_SCREEN_BUTTONS]]}]} {
            set exclusiveScreenButtonsVector [::BasicArrayListD new]
            set touchFeatureFactory [::TouchFeatureFactory::getInstance]
            $exclusiveScreenButtonsVector add [$touchFeatureFactory jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]
            $exclusiveScreenButtonsVector add [$touchFeatureFactory jget SHOW_SCREEN_BUTTONS]
            $exclusiveScreenButtonsVector add [$touchFeatureFactory jget HIDE_SCREEN_BUTTONS]
            $inGameFeatureChoiceGroups add $LABEL $exclusiveScreenButtonsVector
        }
    }
    

    method addToInGameMenu {} {
        set orientationData [::OrientationData::getInstance]
        set inGameExclusiveOrientationSensorVector [::BasicArrayListD new]
        $inGameExclusiveOrientationSensorVector add [[::SensorFeatureFactory::getInstance] jget ORIENTATION_SENSORS]
        $inGameExclusiveOrientationSensorVector add [[::SensorFeatureFactory::getInstance] jget NO_ORIENTATION]
        [::InGameFeatureChoiceGroups::getExclusiveInstance] add [$orientationData jget ORIENTATION_SENSOR_INPUT] $inGameExclusiveOrientationSensorVector
    }
    

    method isAny {} {
        set features [::Features::getInstance]
        set touchFeatureFactory [::TouchFeatureFactory::getInstance]
        if {[expr {[expr {[$features isFeature [$touchFeatureFactory jget SHOW_SCREEN_BUTTONS]] || [$features isFeature [$touchFeatureFactory jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]]}] || [$features isFeature [$touchFeatureFactory jget HIDE_SCREEN_BUTTONS]]}]} {
            return true
        }
        set exclusiveOrientationSensorVector [[[::GameFeatureChoiceGroups::getExclusiveInstance] get] get [[::OrientationData::getInstance] jget ORIENTATION_SENSOR_INPUT]]
        if {[expr {$exclusiveOrientationSensorVector ne {}}]} {
            return true
        }
        return false
    }
}

namespace eval ::InGameFeatures {
}


