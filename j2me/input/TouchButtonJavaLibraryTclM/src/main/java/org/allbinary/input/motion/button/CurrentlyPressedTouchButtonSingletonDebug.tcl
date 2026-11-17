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
# package org.allbinary.input.motion.button

oo::class create ::CurrentlyPressedTouchButtonSingletonDebug {
    superclass ::CurrentlyPressedTouchButtonSingleton
}

oo::define ::CurrentlyPressedTouchButtonSingletonDebug {
    method initFields_CurrentlyPressedTouchButtonSingletonDebug {} {
        my jset string {}
        my jset listString {}
        my jset appendText {}
        my jset PRESSED_AND_FIRED {}
        my jset PRESSED_AND_NOT_FIRED {}
        my jset ASSOCIATED_RELEASED_AND_FIRED {}
        my jset RELEASED_AND_FIRED {}
        my jset RELEASED_AND_FIRED_2 {}
        my jset RELEASED_AND_NOT_FIRED {}
        my jset string [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset listString [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset appendText [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset PRESSED_AND_FIRED "pressed & fired"
        my jset PRESSED_AND_NOT_FIRED "pressed in button but not fired"
        my jset ASSOCIATED_RELEASED_AND_FIRED "assoc. rel & fired"
        my jset RELEASED_AND_FIRED "rel & fired 1"
        my jset RELEASED_AND_FIRED_2 "rel & fired 2"
        my jset RELEASED_AND_NOT_FIRED "rel & not fired"
        return
    }

    constructor {} {
        next
        my initFields_CurrentlyPressedTouchButtonSingletonDebug
    }
    
    

    method appendTouchButtonInput {append touchButtonInput} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [$touchButtonInput toString]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append $append
        my jset appendText [$stringBuffer toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
    }
    

    method append {append} {
        my jset appendText [[[[::StringMaker new] append [my jget appendText]] append $append] toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
    }
    

    method clearLog {x y} {
        my jset appendText [[[[::StringMaker new] append [::GPoint::toStringStatic $x $y 0]] append [[::CommonSeps::getInstance] jget SPACE]] toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
    }
    

    method releaseAndNotFired {} {
        my append [my jget RELEASED_AND_NOT_FIRED]
    }
    

    method releaseAndFired {touchButtonInput} {
        my appendTouchButtonInput [my jget RELEASED_AND_FIRED] $touchButtonInput
    }
    

    method releaseAndFired2 {touchButtonInput} {
        my appendTouchButtonInput [my jget RELEASED_AND_FIRED_2] $touchButtonInput
    }
    

    method releaseAndFiredAssociated {touchButtonInput} {
        my appendTouchButtonInput [my jget ASSOCIATED_RELEASED_AND_FIRED] $touchButtonInput
    }
    

    method pressedAndFired {touchButtonInput} {
        my appendTouchButtonInput [my jget PRESSED_AND_FIRED] $touchButtonInput
    }
    

    method pressedAndNotFired {touchButtonInput} {
        my appendTouchButtonInput [my jget PRESSED_AND_NOT_FIRED] $touchButtonInput
    }
    

    method removeAt {index} {
        set touchButtonInput [next $index]
        my jset listString [[my jget list] toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
        return $touchButtonInput
    }
    

    method remove {touchButtonInput} {
        set isRemoved [next $touchButtonInput]
        my jset listString [[my jget list] toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
        return $isRemoved
    }
    

    method add {touchButtonInput} {
        next $touchButtonInput
        my jset listString [[my jget list] toString]
        my jset string [[[[::StringMaker new] append [my jget listString]] append [my jget appendText]] toString]
    }
    

    method toString {} {
        return [my jget string]
    }
}

namespace eval ::CurrentlyPressedTouchButtonSingletonDebug {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::CurrentlyPressedTouchButtonSingletonDebug new]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::CurrentlyPressedTouchButtonSingletonDebug::staticGet_instanceC]
    }
}


