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

oo::class create ::GameFeatureItemStateListener {
    superclass ::JObject
}

oo::define ::GameFeatureItemStateListener {
    method initFields_GameFeatureItemStateListener {} {
        my jset logUtil {}
        my jset gameOptionsForm {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {gameOptionsForm} {
        next
        my initFields_GameFeatureItemStateListener
        my jset gameOptionsForm $gameOptionsForm
        set gameFeatureFactory [::GameFeatureFactory::getInstance]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget ARTIFICIAL_INTELLEGENCE_PROCESSOR]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget COLLIDABLE_INTERFACE_LAYER_PROCESSOR]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget DAMAGE_FLOATERS]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget DROPPED_ITEMS]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget GAME_INPUT_LAYER_PROCESSOR]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget HEALTH_BARS]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget SOUND]
        ::GameFeatureItemStateListener::add [$gameFeatureFactory jget TICKABLE_LAYER_PROCESSOR]
    }
    
    

    method itemStateChanged {item} {
        try {
            set itemLabel [$item getLabel]
            [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget ITEM_LABEL]] append $itemLabel] toString] [self] "itemStateChanged"
            if {[jinstanceof $item ::GameConfigurationGauge]} {
                [::GameConfigurationUtil::getInstance] change [my jget gameOptionsForm] $item
            } elseif {[jinstanceof $item ::ChoiceGroup]} {
                set gameFeatureUtil [::GameFeatureUtil::getInstance]
                if {[$gameFeatureUtil isExclusive $itemLabel]} {
                    $gameFeatureUtil updateExclusiveForChoiceGroup $item
                } else {
                    $gameFeatureUtil updateMultiple $item
                }
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "itemStateChanged" $e
        }
    }
}

namespace eval ::GameFeatureItemStateListener {
    variable toggleListValue {}
    variable toggleListSet 0
    proc staticGet_toggleList {} {
        variable toggleListValue
        variable toggleListSet
        if {!$toggleListSet} {
            set toggleListSet 1
            set toggleListValue [::BasicArrayListD new]
        }
        return $toggleListValue
    }
    proc staticSet_toggleList {value} {
        variable toggleListValue
        variable toggleListSet
        set toggleListSet 1
        set toggleListValue $value
    }
    proc add {gameFeature} {
        if {[expr {![[::GameFeatureItemStateListener::staticGet_toggleList] contains $gameFeature]}]} {
            [::GameFeatureItemStateListener::staticGet_toggleList] add $gameFeature
        }
    }
}


