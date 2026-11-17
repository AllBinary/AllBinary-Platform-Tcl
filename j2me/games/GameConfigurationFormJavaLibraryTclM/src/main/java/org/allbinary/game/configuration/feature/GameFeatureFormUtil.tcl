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

oo::class create ::GameFeatureFormUtil {
    superclass ::JObject
}

oo::define ::GameFeatureFormUtil {
    method initFields_GameFeatureFormUtil {} {
        my jset logUtil {}
        my jset meUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset meUtil [::MIDPUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_GameFeatureFormUtil
    }
    
    

    method getChoiceGroup {hashtable name option} {
        set stringMaker [::StringMaker new]
        set choiceGroup [::ChoiceGroup new $name $option [[::StringUtil::getInstance] getArrayInstance] [::NullImage::staticGet_NULL_IMAGE_ARRAY]]
        set list [$hashtable get $name]
        set features [::Features::getInstance]
        set ADD_CHOICE ": Adding Choice: "
        set GET_CHOICE_GROUP "getChoiceGroup"
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameFeature [[$list jget objectArray] get $index]
            $stringMaker delete 0 [$stringMaker length]
            [my jget logUtil] putF [[[[$stringMaker append $name] append $ADD_CHOICE] append [$gameFeature toString]] toString] [self] $GET_CHOICE_GROUP
            $choiceGroup append [$gameFeature toString] [::NullImage::staticGet_NULL_IMAGE]
            if {[$features isFeature $gameFeature]} {
                $choiceGroup setSelectedIndex $index true
            }
        }
        return $choiceGroup
    }
    

    method addChoiceGroup {form hashtable option} {
        set stringMaker [::StringMaker new]
        set ADDING_CHOICE_GROUP "Adding Choice Group: "
        set ADD_CHOICE_GROUP "addChoiceGroup"
        set size [$hashtable size]
        set objectArray [[::HashtableUtil::getInstance] getKeysAsArray $hashtable]
        set name {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set name [$objectArray get $index]
            $stringMaker delete 0 [$stringMaker length]
            [my jget logUtil] putF [[[$stringMaker append $ADDING_CHOICE_GROUP] append $name] toString] [self] $ADD_CHOICE_GROUP
            [my jget meUtil] appendItem $form [my getChoiceGroup $hashtable $name $option]
        }
    }
    

    method setDefault {form} {
        set size [$form size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set item [$form get $index]
            if {[jinstanceof $item ::GameConfigurationGauge]} {
                [::GameConfigurationUtil::getInstance] setDefault $item
            } elseif {[jinstanceof $item ::ChoiceGroup]} {
                [::GameFeatureUtil::getInstance] setDefault $item
            }
        }
    }
}

namespace eval ::GameFeatureFormUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameFeatureFormUtil new]
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
        return [::GameFeatureFormUtil::staticGet_instance]
    }
}


