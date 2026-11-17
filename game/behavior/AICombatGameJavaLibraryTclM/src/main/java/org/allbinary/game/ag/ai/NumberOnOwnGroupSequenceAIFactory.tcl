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
# package org.allbinary.game.ag.ai

oo::class create ::NumberOnOwnGroupSequenceAIFactory {
    superclass ::JObject
}

oo::define ::NumberOnOwnGroupSequenceAIFactory {
    method initFields_NumberOnOwnGroupSequenceAIFactory {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_NumberOnOwnGroupSequenceAIFactory
    }
    

    method getInstance {hashtable artificialIntelligenceInterface ownerLayerInterface gameInput} {
        set integerArray [[::NumberInSameGroupSequence::getInstance] jget NUMBER_ON_SAME_TEAM_SEQUENCE]
        set list [::BasicArrayListD new]
        for {set index 0} {[expr {$index < [$integerArray length]}]} {jpostincr index 1} {
            set integerCanBeNull [$hashtable get [$integerArray get $index]]
            if {[expr {$integerCanBeNull eq {}}]} {
                break
            }
            $list add $integerCanBeNull
        }
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Total AI Properties: "
        $stringBuffer appendint [$list size]
        $stringBuffer append " == Total AI: "
        $stringBuffer appendint [$artificialIntelligenceInterface length]
        $stringBuffer append " + 1"
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget GET_INSTANCE]
        if {[expr {[jint [expr {[$artificialIntelligenceInterface length] - 1}]] > [$list size]}]} {
            error [jexception Exception "Not enough AI properties."]
        }
        if {[expr {[jint [expr {[$artificialIntelligenceInterface length] - 1}]] < [$list size]}]} {
            error [jexception Exception "Too Many AI properties."]
        }
        set numberOnSameTeam [jarray [$list size] {}]
        for {set index 0} {[expr {$index < [$numberOnSameTeam length]}]} {jpostincr index 1} {
            $numberOnSameTeam set $index [[$list jget objectArray] get $index]
        }
        return [::NumberOnOwnGroupSequenceAI new $numberOnSameTeam $artificialIntelligenceInterface $ownerLayerInterface $gameInput]
    }
}

namespace eval ::NumberOnOwnGroupSequenceAIFactory {
}


