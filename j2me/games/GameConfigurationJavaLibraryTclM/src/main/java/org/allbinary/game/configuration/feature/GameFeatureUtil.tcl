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

oo::class create ::GameFeatureUtil {
    superclass ::JObject
}

oo::define ::GameFeatureUtil {
    method initFields_GameFeatureUtil {} {
        my jset logUtil {}
        my jset tsUtil {}
        my jset enumerationUtil {}
        my jset ON_GAME_FEATURE_CHANGE {}
        my jset GAME_FEATURE_CHANGED {}
        my jset logUtil [::LogUtil::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        my jset ON_GAME_FEATURE_CHANGE "onGameFeatureChange"
        my jset GAME_FEATURE_CHANGED "Game Feature Changed: "
        return
    }

    constructor {} {
        next
        my initFields_GameFeatureUtil
    }
    
    

    method setDefault {choiceGroup} {
        set stringBuffer [::StringMaker new]
        set METHOD_NAME "setDefault"
        set SELECTED_ARRAY_RETURN "selectedArray_return\["
        set SELECTED_SEP "\] = "
        set selectedArray_return [jarray [$choiceGroup size] false]
        set total [$choiceGroup getSelectedFlags $selectedArray_return]
        $stringBuffer append "Multiple Total Choices: "
        $stringBuffer appendint $total
        [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
        set features [::Features::getInstance]
        for {set index 0} {[expr {$index < [$selectedArray_return length]}]} {jpostincr index 1} {
            set isSelected [$selectedArray_return get $index]
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append $SELECTED_ARRAY_RETURN
            $stringBuffer appendint $index
            $stringBuffer append $SELECTED_SEP
            $stringBuffer appendboolean $isSelected
            [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
            set selectedChoiceLabel [$choiceGroup getString $index]
            set gameFeature [::Feature::getInstance $selectedChoiceLabel]
            if {[$features isDefault $gameFeature]} {
                $features add $gameFeature
                $choiceGroup setSelectedIndex $index true
            } else {
                $features remove $gameFeature
                $choiceGroup setSelectedIndex $index false
            }
        }
    }
    

    method updateMultiple {choiceGroup} {
        set stringBuffer [::StringMaker new]
        set METHOD_NAME "updateMultiple"
        set SELECTED_ARRAY_RETURN "selectedArray_return\["
        set SELECTED_SEP "\] = "
        set selectedArray_return [jarray [$choiceGroup size] false]
        set total [$choiceGroup getSelectedFlags $selectedArray_return]
        $stringBuffer append "Multiple Total Choices: "
        $stringBuffer appendint $total
        [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
        set features [::Features::getInstance]
        for {set index 0} {[expr {$index < [$selectedArray_return length]}]} {jpostincr index 1} {
            set isSelected [$selectedArray_return get $index]
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append $SELECTED_ARRAY_RETURN
            $stringBuffer appendint $index
            $stringBuffer append $SELECTED_SEP
            $stringBuffer appendboolean $isSelected
            [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
            set selectedChoiceLabel [$choiceGroup getString $index]
            set gameFeature [::Feature::getInstance $selectedChoiceLabel]
            if {[expr {[expr {!$isSelected}] && [$features isFeature $gameFeature]}]} {
                $features remove $gameFeature
            } elseif {[expr {$isSelected && [expr {![$features isFeature $gameFeature]}]}]} {
                $features add $gameFeature
            }
        }
    }
    

    method updateExclusiveForChoiceGroup {choiceGroup} {
        set stringBuffer [::StringMaker new]
        set METHOD_NAME "updateExclusive"
        set SELECTED_ARRAY_RETURN "selectedArray_return\["
        set SELECTED_SEP "\] = "
        set selectedArray_return [jarray [$choiceGroup size] false]
        set total [$choiceGroup getSelectedFlags $selectedArray_return]
        $stringBuffer append "Exclusive Total Choices: 1=="
        $stringBuffer appendint $total
        [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
        for {set index 0} {[expr {$index < [$selectedArray_return length]}]} {jpostincr index 1} {
            set isSelected [$selectedArray_return get $index]
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append $SELECTED_ARRAY_RETURN
            $stringBuffer appendint $index
            $stringBuffer append $SELECTED_SEP
            $stringBuffer appendboolean $isSelected
            [my jget logUtil] putF [$stringBuffer toString] [self] $METHOD_NAME
            if {$isSelected} {
                set selectedChoiceLabel [$choiceGroup getString $index]
                my updateExclusive $selectedChoiceLabel
            }
        }
    }
    

    method isExclusive {itemLabel} {
        set enumeration [[[::GameFeatureChoiceGroups::getExclusiveInstance] get] keys]
        set name {}
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            set name [[my jget enumerationUtil] nextElement $enumeration]
            if {[expr {[[my jget tsUtil] compareTo $itemLabel $name] == 0}]} {
                return true
            }
        }
        return false
    }
    

    method updateExclusive {selectedChoiceLabel} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget ITEM_LABEL]] append $selectedChoiceLabel] toString] [self] "updateExclusive"
        set gameFeature [::Feature::getInstance $selectedChoiceLabel]
        set hashtable [[::GameFeatureChoiceGroups::getExclusiveInstance] get]
        set objectArray [[::HashtableUtil::getInstance] getKeysAsArray $hashtable]
        set basicArrayList {}
        set anyType {}
        set size [$objectArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [$objectArray get $index]
            set basicArrayList [$hashtable get $anyType]
            my updateExclusiveList $gameFeature $basicArrayList
        }
    }
    

    method updateExclusiveList {gameFeature list} {
        if {[$list contains $gameFeature]} {
            set features [::Features::getInstance]
            set addIndex [$list indexOf $gameFeature]
            set size [$list size]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                if {[expr {$addIndex != $index}]} {
                    $features remove [[$list jget objectArray] get $index]
                } else {
                    $features add [[$list jget objectArray] get $index]
                }
            }
        }
    }
}

namespace eval ::GameFeatureUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameFeatureUtil new]
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
        return [::GameFeatureUtil::staticGet_instance]
    }
}


