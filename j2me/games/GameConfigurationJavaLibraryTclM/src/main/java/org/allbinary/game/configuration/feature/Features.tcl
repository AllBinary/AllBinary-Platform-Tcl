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
# package org.allbinary.game.configuration.feature

oo::class create ::Features {
    superclass ::JObject
}

oo::define ::Features {
    method initFields_Features {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset list {}
        my jset defaultList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_Features
        my jset list [::BasicArrayListD new]
        my jset defaultList [::BasicArrayListD new]
        my init
    }
    

    method addDefault {gameFeature} {
        my add $gameFeature
        if {[expr {![[my jget defaultList] contains $gameFeature]}]} {
            [my jget defaultList] add $gameFeature
        }
    }
    

    method add {gameFeature} {
        if {[expr {![[my jget list] contains $gameFeature]}]} {
            [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [$gameFeature toString]] toString] [self] [[my jget commonStrings] jget ADD]
            [my jget list] add $gameFeature
            [::GameFeatureEventHandler::getInstance] fireEvent [::GameFeatureEvent new $gameFeature [$gameFeature toString]]
        }
    }
    

    method removeDefault {gameFeature} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [$gameFeature toString]] toString] [self] "removeDefault"
        my remove $gameFeature
        [my jget defaultList] remove $gameFeature
    }
    

    method remove {gameFeature} {
        if {[[my jget list] contains $gameFeature]} {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget REMOVE]
            [my jget list] remove $gameFeature
            [::GameFeatureEventHandler::getInstance] fireEvent [::GameFeatureEvent new $gameFeature [$gameFeature toString]]
        }
    }
    

    method init {} {
        try {
            set gameFeatureFactory [::GameFeatureFactory::getInstance]
            set inputFeatureFactory [::InputFeatureFactory::getInstance]
            set sensorFeatureFactory [::SensorFeatureFactory::getInstance]
            set touchFeatureFactory [::TouchFeatureFactory::getInstance]
            my addDefault [$gameFeatureFactory jget ARTIFICIAL_INTELLEGENCE_PROCESSOR]
            my addDefault [$gameFeatureFactory jget COLLIDABLE_INTERFACE_LAYER_PROCESSOR]
            my addDefault [$gameFeatureFactory jget GAME_INPUT_LAYER_PROCESSOR]
            my addDefault [$gameFeatureFactory jget TICKABLE_LAYER_PROCESSOR]
            my addDefault [$inputFeatureFactory jget MULTI_KEY_PRESS]
            my addDefault [$inputFeatureFactory jget REMOVE_DUPLICATE_KEY_PRESSES]
            my addDefault [$gameFeatureFactory jget SCREEN_SHAKE]
            my addDefault [$gameFeatureFactory jget POST_IMAGE_LOADING_MODIFICATION]
            set operatingSystemInterface [[::OperatingSystemFactory::getInstance] getOperatingSystemInstance]
            if {[$operatingSystemInterface isOverScan]} {
                my addDefault [$sensorFeatureFactory jget NO_ORIENTATION]
                my addDefault [$touchFeatureFactory jget HIDE_SCREEN_BUTTONS]
            } else {
                my addDefault [$sensorFeatureFactory jget ORIENTATION_SENSORS]
                my addDefault [$touchFeatureFactory jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]
            }
            my addDefault [$touchFeatureFactory jget TOUCH_ENABLED]
            my addDefault [[::MainFeatureFactory::getInstance] jget FULL_SCREEN]
            my addDefault [[::MainFeatureFactory::getInstance] jget LOAD_ONDEMAND]
        } on error {e} {
            ::PreLogUtil::putOE [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget INIT] $e
        }
    }
    

    method isDefault {gameFeature} {
        return [[my jget defaultList] contains $gameFeature]
    }
    

    method isFeature {gameFeature} {
        return [[my jget list] contains $gameFeature]
    }
    

    method toggle {gameFeature} {
        if {[my isFeature $gameFeature]} {
            my remove $gameFeature
        } else {
            my add $gameFeature
        }
    }
}

namespace eval ::Features {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        if {[expr {[::Features::staticGet_SINGLETON] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::Features::staticSet_SINGLETON [::Features new]
        }
        return [::Features::staticGet_SINGLETON]
    }
}


