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
# package org.allbinary.game.ai

oo::class create ::BasicAI {
    superclass ::ArtificialIntelligence
}

oo::define ::BasicAI {
    method initFields_BasicAI {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset gameKeyEventFactory {}
        my jset ownerLayerInterface {}
        my jset gameInput {}
        my jset lastKey 0
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        
        
        my jset lastKey [expr {-1}]
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next
        my initFields_BasicAI
        my jset ownerLayerInterface $ownerLayerInterface
        my jset gameInput $gameInput
    }
    

    method processAI {allBinaryLayerManager} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method processKeyAI {key} {
        if {[expr {$key != [expr {-1}]}]} {
            [my jget gameInput] add [[my jget gameKeyEventFactory] getInstanceForKey [self] $key]
        }
    }
    

    method setLastKey {lastKey} {
        my jset lastKey $lastKey
    }
    

    method getLastKey {} {
        return [my jget lastKey]
    }
    

    method getOwnerLayerInterface {} {
        return [my jget ownerLayerInterface]
    }
    

    method getGameInput {} {
        return [my jget gameInput]
    }
    

    method getName {} {
        return [jclassname [self]]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [[::CommonSeps::getInstance] jget NEW_LINE]
        $stringBuffer append [my getName]
        $stringBuffer append " LastKey: "
        $stringBuffer append [::CanvasUtil::getKeyName [my getLastKey]]
        return [$stringBuffer toString]
    }
    

    method getSourceId {} {
        return 1
    }
}

namespace eval ::BasicAI {
    variable AI_VISITORValue {}
    variable AI_VISITORSet 0
    proc staticGet_AI_VISITOR {} {
        variable AI_VISITORValue
        variable AI_VISITORSet
        if {!$AI_VISITORSet} {
            set AI_VISITORSet 1
            set AI_VISITORValue [[::SmallIntegerSingletonFactory::getInstance] getAt 2]
        }
        return $AI_VISITORValue
    }
    proc staticSet_AI_VISITOR {value} {
        variable AI_VISITORValue
        variable AI_VISITORSet
        set AI_VISITORSet 1
        set AI_VISITORValue $value
    }
    variable IDValue {}
    variable IDSet 0
    proc staticGet_ID {} {
        variable IDValue
        variable IDSet
        if {!$IDSet} {
            set IDSet 1
            set IDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 1]
        }
        return $IDValue
    }
    proc staticSet_ID {value} {
        variable IDValue
        variable IDSet
        set IDSet 1
        set IDValue $value
    }
}


