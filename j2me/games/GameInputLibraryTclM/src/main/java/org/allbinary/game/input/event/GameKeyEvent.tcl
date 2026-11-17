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
# package org.allbinary.game.input.event

oo::class create ::GameKeyEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::GameKeyEvent {
    method initFields_GameKeyEvent {} {
        my jset sourceId 0
        my jset repeated false
        my jset key 0
        my jset gameActionKey 0
        my jset originalKey 0
        
        my jset repeated false
        
        my jset gameActionKey 0
        my jset originalKey 0
        return
    }
    
    

    constructor {anyType sourceId originalKey gameActionKey key repeated} {
        next $anyType
        my initFields_GameKeyEvent
        my jset sourceId $sourceId
        my setOriginalKey $originalKey
        my jset key $key
        my setGameActionKey $gameActionKey
        my setRepeatEvents $repeated
    }
    

    method init {anyType} {
        my setSource $anyType
    }
    

    method setRepeatEvents {repeated} {
        my jset repeated $repeated
    }
    

    method hasRepeatEvents {} {
        return [my jget repeated]
    }
    

    method getKey {} {
        return [my jget key]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "\nKey: "
        $stringBuffer appendint [my getKey]
        return [$stringBuffer toString]
    }
    

    method getOriginalKey {} {
        return [my jget originalKey]
    }
    

    method setOriginalKey {originalKey} {
        my jset originalKey $originalKey
    }
    

    method getGameActionKey {} {
        return [my jget gameActionKey]
    }
    

    method setGameActionKey {gameActionKey} {
        my jset gameActionKey $gameActionKey
    }
    

    method getSourceId {} {
        return [my jget sourceId]
    }
}

namespace eval ::GameKeyEvent {
    variable NONEValue {}
    variable NONESet 0
    proc staticGet_NONE {} {
        variable NONEValue
        variable NONESet
        if {!$NONESet} {
            set NONESet 1
            set NONEValue [::GameKeyEvent new [[::NullUtil::getInstance] jget NULL_OBJECT] [expr {-1}] [expr {-1}] [expr {-1}] [expr {-1}] false]
        }
        return $NONEValue
    }
    proc staticSet_NONE {value} {
        variable NONEValue
        variable NONESet
        set NONESet 1
        set NONEValue $value
    }
    proc createEvent {anyType sourceId key} {
        return [::GameKeyEvent new $anyType $sourceId 0 0 $key false]
    }
}


