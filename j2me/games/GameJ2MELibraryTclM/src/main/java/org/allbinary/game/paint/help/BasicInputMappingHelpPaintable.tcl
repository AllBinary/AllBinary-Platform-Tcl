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

oo::class create ::BasicInputMappingHelpPaintable {
    superclass ::HelpPaintable
}

oo::define ::BasicInputMappingHelpPaintable {
    method initFields_BasicInputMappingHelpPaintable {} {
        my jset gameInputMappingArray {}
        my jset NONE {}
        
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        return
    }
    

    constructor {gameInputMappingArray basicColor} {
        next "Help Screen" [[::BasicColorFactory::getInstance] jget BLACK] $basicColor
        my initFields_BasicInputMappingHelpPaintable
        my jset gameInputMappingArray $gameInputMappingArray
        my update [my jget NONE] [my jget NONE]
    }
    

    method update {selectedGameKey selectedInput} {
        set gameKeyMapping [[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance]
        set EQUAL " = "
        set stringMaker [::StringMaker new]
        set size [[my jget gameInputMappingArray] length]
        set keyInfo [jarray $size {}]
        set gameInputMapping {}
        set gameKey {}
        set list {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameInputMapping [[my jget gameInputMappingArray] get $index]
            set gameKey [$gameInputMapping getGameKey]
            set list [[$gameKeyMapping getInputMapping] getMappedInput $gameKey]
            $stringMaker delete 0 [$stringMaker length]
            $keyInfo set $index [[[[$stringMaker append [$gameInputMapping getName]] append $EQUAL] append [my get $list]] toString]
        }
        next $keyInfo
    }
    

    method get {keyList} {
        set commonSeps [::CommonSeps::getInstance]
        set stringBuffer [::StringMaker new]
        set AND "and "
        set key {}
        set size [$keyList size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set key [[$keyList jget objectArray] get $index]
            $stringBuffer append [$key getName]
            if {[expr {[jint [expr {$index + 1}]] < [$keyList size]}]} {
                if {[expr {[$keyList size] == 2}]} {
                    [$stringBuffer append [$commonSeps jget SPACE]] append $AND
                } else {
                    if {[expr {[jint [expr {$index + 2}]] == [$keyList size]}]} {
                        $stringBuffer append [$commonSeps jget COMMA_SEP]
                        $stringBuffer append $AND
                    } else {
                        $stringBuffer append [$commonSeps jget COMMA_SEP]
                    }
                }
            }
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::BasicInputMappingHelpPaintable {
}


