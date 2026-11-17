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
# package org.allbinary.game.input

oo::class create ::InputFactory {
    superclass ::JObject
}

oo::define ::InputFactory {
    method initFields_InputFactory {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset KEY_CODE_LABEL {}
        my jset DEVICE_ID_LABEL {}
        my jset MAX 0
        my jset inputIntegerArray {}
        my jset NO_INPUT {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset KEY_CODE_LABEL "KeyCode: "
        my jset DEVICE_ID_LABEL "DeviceId: "
        my jset MAX [[::SmallIntegerSingletonFactory::getInstance] getMin]
        my jset inputIntegerArray [jarray [my jget MAX] {}]
        my jset NO_INPUT [::Input new 0 [[my jget commonStrings] jget UNKNOWN]]
        return
    }
    
    

    constructor {} {
        next
        my initFields_InputFactory
        set size [[my jget inputIntegerArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget inputIntegerArray] set $index [my jget NO_INPUT]
        }
    }
    

    method add {id input} {
        [my jget inputIntegerArray] set $id $input
    }
    

    method getInstanceById {id} {
        if {[expr {$id < 0}]} {
            set id [expr {-$id}]
        }
        if {[expr {$id > [[my jget inputIntegerArray] length]}]} {
            [my jget logUtil] putF [[[[::StringMaker new] append "Warning id: "] appendint $id] toString] [self] [[my jget commonStrings] jget GET_INSTANCE]
            return [my jget NO_INPUT]
        }
        return [[my jget inputIntegerArray] get $id]
    }
}

namespace eval ::InputFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::InputFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::InputFactory::staticSet_instance [::InputFactory new]
        }
        return [::InputFactory::staticGet_instance]
    }
}


