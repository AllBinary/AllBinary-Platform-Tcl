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
# package org.allbinary.game.paint.help

oo::class create ::InputMappingHelpPaintable {
    superclass ::HelpPaintable
}

oo::define ::InputMappingHelpPaintable {
    method initFields_InputMappingHelpPaintable {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset commonSeps {}
        my jset stringUtil {}
        my jset basicColorFactory {}
        my jset NONE {}
        my jset EMPTY_STRING {}
        my jset gameInputMappingArray {}
        my jset keyMappingArray {}
        my jset actionBasicColor {}
        my jset inputBasicColorArray {}
        my jset selectedBasicColor {}
        my jset updateMyFontProperties {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset commonSeps [::CommonSeps::getInstance]
        my jset stringUtil [::StringUtil::getInstance]
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        
        my jset keyMappingArray [jarray 0 {}]
        my jset actionBasicColor [[::BasicColorUtil::getInstance] jget ZERO_ARRAY]
        my jset inputBasicColorArray [jarrayof 0 {jarray 0 {}}]
        my jset selectedBasicColor {}
        my jset updateMyFontProperties [::UpdateMyFontProperties new]
        return
    }
    

    constructor {gameInputMappingArray backgroundBasicColor basicColor} {
        next "Input Mapping" $backgroundBasicColor $basicColor
        my initFields_InputMappingHelpPaintable
        my jset gameInputMappingArray $gameInputMappingArray
        my update [my jget NONE] [my jget NONE]
        if {[expr {[expr {$backgroundBasicColor eq [[my jget basicColorFactory] jget WHITE]}] || [expr {$basicColor eq [[my jget basicColorFactory] jget WHITE]}]}]} {
            my jset selectedBasicColor [[my jget basicColorFactory] jget RED]
        } else {
            my jset selectedBasicColor [[my jget basicColorFactory] jget WHITE]
        }
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        set updateMyFontProperties [::UpdateMyFontProperties new]
        $updateMyFontProperties jset charHeight [$font getHeight]
        set stringMaker [::StringMaker new]
        set inputInfo [my jget inputInfo]
        set size [$inputInfo length]
        $updateMyFontProperties jset actionStringArray [jarray $size {}]
        $updateMyFontProperties jset keymappingBeginWidthArray [jarray $size 0]
        $updateMyFontProperties jset actionStringDeltaXArray [jarray $size 0]
        $updateMyFontProperties jset inputDeltaXArray [jarrayof $size {jarray 0 0}]
        $updateMyFontProperties jset sepArray [jarrayof $size {jarray 0 {}}]
        $updateMyFontProperties jset sepWidthArray [jarrayof $size {jarray 0 0}]
        set list {}
        set keyMappings {}
        set actionString {}
        set input {}
        set size2 0
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set list [[my jget keyMappingArray] get $index]
            set keyMappings [my get $list]
            $stringMaker delete 0 [$stringMaker length]
            set actionString [[[[[$stringMaker append [$inputInfo get $index]] append [[my jget commonSeps] jget COLON]] append [[my jget commonSeps] jget SPACE]] append [[my jget commonSeps] jget SPACE]] toString]
            [$updateMyFontProperties jget actionStringArray] set $index $actionString
            $stringMaker delete 0 [$stringMaker length]
            [$updateMyFontProperties jget keymappingBeginWidthArray] set $index ([expr {[$font stringWidth [[[$stringMaker append [[$updateMyFontProperties jget actionStringArray] get $index]] append $keyMappings] toString]] >> 1}])
            [$updateMyFontProperties jget actionStringDeltaXArray] set $index [$font stringWidth $actionString]
            set size2 [$list size]
            [$updateMyFontProperties jget inputDeltaXArray] set $index [jarray $size2 0]
            [$updateMyFontProperties jget sepArray] set $index [jarray $size2 {}]
            [$updateMyFontProperties jget sepWidthArray] set $index [jarray $size2 0]
            for {set index2 0} {[expr {$index2 < $size2}]} {jpostincr index2 1} {
                set input [[$list jget objectArray] get $index2]
                [[$updateMyFontProperties jget inputDeltaXArray] get $index] set $index2 [$font stringWidth [$input getName]]
                [[$updateMyFontProperties jget sepArray] get $index] set $index2 [my jget EMPTY_STRING]
                if {[expr {[jint [expr {$index2 + 1}]] < [$list size]}]} {
                    if {[expr {[$list size] == 2}]} {
                        [[$updateMyFontProperties jget sepArray] get $index] set $index2 [::InputMappingHelpPaintable::staticGet_AND]
                    } else {
                        if {[expr {[jint [expr {$index2 + 2}]] == [$list size]}]} {
                            [[$updateMyFontProperties jget sepArray] get $index] set $index2 [::InputMappingHelpPaintable::staticGet_MORE_THAN_TWO_IN_LIST_AND]
                        } else {
                            [[$updateMyFontProperties jget sepArray] get $index] set $index2 [::InputMappingHelpPaintable::staticGet_SEP]
                        }
                    }
                }
                if {[expr {[[[$updateMyFontProperties jget sepArray] get $index] get $index2] ne [my jget EMPTY_STRING]}]} {
                    [[$updateMyFontProperties jget sepWidthArray] get $index] set $index2 [$font stringWidth [[[$updateMyFontProperties jget sepArray] get $index] get $index2]]
                }
            }
        }
        my jset updateMyFontProperties $updateMyFontProperties
        next $graphics
    }
    

    method update {selectedGameKey selectedInput} {
        set stringMaker [::StringMaker new]
        [my jget logUtil] putF [[[[[[$stringMaker append [[::CommonLabels::getInstance] jget START_LABEL]] append "selected GameKey: "] append [[my jget stringUtil] toString1 $selectedGameKey]] append " Input: "] append [[my jget stringUtil] toString1 $selectedInput]] toString] [self] [[my jget commonStrings] jget UPDATE]
        set gameKeyMapping [[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance]
        set size [[my jget gameInputMappingArray] length]
        set keyInfo [jarray $size {}]
        set keyMappingArray [jarray $size {}]
        set actionBasicColor [jarray $size {}]
        set inputBasicColorArray [jarray $size {}]
        set gameInputMapping {}
        set gameKey {}
        set list {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameInputMapping [[my jget gameInputMappingArray] get $index]
            set gameKey [$gameInputMapping getGameKey]
            set list [[$gameKeyMapping getInputMapping] getMappedInput $gameKey]
            set size2 [$list size]
            $inputBasicColorArray set $index [jarray $size2 {}]
            for {set index2 0} {[expr {$index2 < $size2}]} {jpostincr index2 1} {
                [$inputBasicColorArray get $index] set $index2 [my jget basicColor]
            }
            if {[expr {$gameKey eq $selectedGameKey}]} {
                $stringMaker delete 0 [$stringMaker length]
                [my jget logUtil] putF [[[$stringMaker append "Found: selected GameKey: "] append [[my jget stringUtil] toString1 $selectedGameKey]] toString] [self] [[my jget commonStrings] jget UPDATE]
                $actionBasicColor set $index [my jget selectedBasicColor]
                set indexOfSelectedInput [$list indexOf $selectedInput]
                if {[expr {$indexOfSelectedInput >= 0}]} {
                    $stringMaker delete 0 [$stringMaker length]
                    [my jget logUtil] putF [[[$stringMaker append "Found: selected Input: "] append [[my jget stringUtil] toString1 $selectedInput]] toString] [self] [[my jget commonStrings] jget UPDATE]
                    [$inputBasicColorArray get $index] set $indexOfSelectedInput [my jget selectedBasicColor]
                }
            } else {
                $actionBasicColor set $index [my jget basicColor]
            }
            $keyInfo set $index [$gameInputMapping getName]
            $keyMappingArray set $index $list
        }
        my jset keyMappingArray $keyMappingArray
        my jset actionBasicColor $actionBasicColor
        my jset inputBasicColorArray $inputBasicColorArray
        next $keyInfo
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method get {keyList} {
        set stringBuffer [::StringMaker new]
        set key {}
        set size [$keyList size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set key [[$keyList jget objectArray] get $index]
            $stringBuffer append [$key getName]
            if {[expr {[jint [expr {$index + 1}]] < [$keyList size]}]} {
                if {[expr {[$keyList size] == 2}]} {
                    $stringBuffer append [::InputMappingHelpPaintable::staticGet_AND]
                } else {
                    if {[expr {[jint [expr {$index + 2}]] == [$keyList size]}]} {
                        $stringBuffer append [::InputMappingHelpPaintable::staticGet_MORE_THAN_TWO_IN_LIST_AND]
                    } else {
                        $stringBuffer append [::InputMappingHelpPaintable::staticGet_SEP]
                    }
                }
            }
        }
        return [$stringBuffer toString]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set halfWidth [[my jget displayInfo] getLastHalfWidth]
        $graphics setColor [[my jget basicColor] intValue]
        $graphics drawString [my jget title] [expr {$halfWidth - [my jget titleBeginWidth]}] [[my jget updateMyFontProperties] jget charHeight] [my jget anchor]
        set inputInfo [my jget inputInfo]
        set size [$inputInfo length]
        set y 0
        set deltaX 0
        set size2 0
        set actionString {}
        set input {}
        set list {}
        set sep {}
        set beginWidth 0
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set y [expr {([jint [expr {$index + 3}]]) * [[my jget updateMyFontProperties] jget charHeight]}]
            set deltaX 0
            set list [[my jget keyMappingArray] get $index]
            set size2 [$list size]
            set beginWidth [[[my jget updateMyFontProperties] jget keymappingBeginWidthArray] get $index]
            $graphics setColor [[[my jget actionBasicColor] get $index] intValue]
            set actionString [[[my jget updateMyFontProperties] jget actionStringArray] get $index]
            $graphics drawString $actionString [jint [expr {[jint [expr {$halfWidth - $beginWidth}]] + $deltaX}]] $y [my jget anchor]
            set deltaX [jint [expr {$deltaX + [[[my jget updateMyFontProperties] jget actionStringDeltaXArray] get $index]}]]
            for {set index2 0} {[expr {$index2 < $size2}]} {jpostincr index2 1} {
                set input [[$list jget objectArray] get $index2]
                $graphics setColor [[[[my jget inputBasicColorArray] get $index] get $index2] intValue]
                $graphics drawString [$input getName] [jint [expr {[jint [expr {$halfWidth - $beginWidth}]] + $deltaX}]] $y [my jget anchor]
                set deltaX [jint [expr {$deltaX + [[[[my jget updateMyFontProperties] jget inputDeltaXArray] get $index] get $index2]}]]
                set sep [[[[my jget updateMyFontProperties] jget sepArray] get $index] get $index2]
                $graphics setColor [[my jget basicColor] intValue]
                $graphics drawString $sep [jint [expr {[jint [expr {$halfWidth - $beginWidth}]] + $deltaX}]] $y [my jget anchor]
                set deltaX [jint [expr {$deltaX + [[[[my jget updateMyFontProperties] jget sepWidthArray] get $index] get $index2]}]]
            }
        }
    }
}

namespace eval ::InputMappingHelpPaintable {
    variable ANDValue {}
    variable ANDSet 0
    proc staticGet_AND {} {
        variable ANDValue
        variable ANDSet
        if {!$ANDSet} {
            set ANDSet 1
            set ANDValue " and "
        }
        return $ANDValue
    }
    proc staticSet_AND {value} {
        variable ANDValue
        variable ANDSet
        set ANDSet 1
        set ANDValue $value
    }
    variable SEPValue {}
    variable SEPSet 0
    proc staticGet_SEP {} {
        variable SEPValue
        variable SEPSet
        if {!$SEPSet} {
            set SEPSet 1
            set SEPValue ", "
        }
        return $SEPValue
    }
    proc staticSet_SEP {value} {
        variable SEPValue
        variable SEPSet
        set SEPSet 1
        set SEPValue $value
    }
    variable MORE_THAN_TWO_IN_LIST_ANDValue {}
    variable MORE_THAN_TWO_IN_LIST_ANDSet 0
    proc staticGet_MORE_THAN_TWO_IN_LIST_AND {} {
        variable MORE_THAN_TWO_IN_LIST_ANDValue
        variable MORE_THAN_TWO_IN_LIST_ANDSet
        if {!$MORE_THAN_TWO_IN_LIST_ANDSet} {
            set MORE_THAN_TWO_IN_LIST_ANDSet 1
            set MORE_THAN_TWO_IN_LIST_ANDValue ", and "
        }
        return $MORE_THAN_TWO_IN_LIST_ANDValue
    }
    proc staticSet_MORE_THAN_TWO_IN_LIST_AND {value} {
        variable MORE_THAN_TWO_IN_LIST_ANDValue
        variable MORE_THAN_TWO_IN_LIST_ANDSet
        set MORE_THAN_TWO_IN_LIST_ANDSet 1
        set MORE_THAN_TWO_IN_LIST_ANDValue $value
    }
}


