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

oo::class create ::BasicTouchInputFactory {
    superclass ::JObject
}

oo::define ::BasicTouchInputFactory {
    method initFields_BasicTouchInputFactory {} {
        my jset logUtil {}
        my jset SPECIAL_BUTTON_SEVEN_TESTING_ONLY {}
        my jset SPECIAL_BUTTON_EIGHT_TESTING_ONLY {}
        my jset SPECIAL_BUTTON_SIX {}
        my jset SPECIAL_BUTTON_FIVE {}
        my jset SPECIAL_BUTTON_FOUR {}
        my jset SPECIAL_BUTTON_THREE {}
        my jset SPECIAL_BUTTON_TWO {}
        my jset SPECIAL_BUTTON_ONE {}
        my jset UP {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset DOWN {}
        my jset NONE {}
        my jset initialized false
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        
        
        
        
        
        
        
        
        
        
        
        
        
        my jset initialized false
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_BasicTouchInputFactory
        set MAX [[::InputFactory::getInstance] jget MAX]
        my jset SPECIAL_BUTTON_SEVEN_TESTING_ONLY [::TouchButtonInput new [jint [expr {$MAX - 41}]] "Button 7 - Testing Only May Cross Over Key Values"]
        my jset SPECIAL_BUTTON_EIGHT_TESTING_ONLY [::TouchButtonInput new [jint [expr {$MAX - 42}]] "Button 8 - Testing Only May Cross Over Key Values"]
        my jset SPECIAL_BUTTON_SIX [::TouchButtonInput new [jint [expr {$MAX - 30}]] "Button 6"]
        my jset SPECIAL_BUTTON_FIVE [::TouchButtonInput new [jint [expr {$MAX - 31}]] "Button 5"]
        my jset SPECIAL_BUTTON_FOUR [::TouchButtonInput new [jint [expr {$MAX - 32}]] "Button 4"]
        my jset SPECIAL_BUTTON_THREE [::TouchButtonInput new [jint [expr {$MAX - 33}]] "Button 3"]
        my jset SPECIAL_BUTTON_TWO [::TouchButtonInput new [jint [expr {$MAX - 34}]] "Button 2"]
        my jset SPECIAL_BUTTON_ONE [::TouchButtonInput new [jint [expr {$MAX - 35}]] "Button 1"]
        my jset UP [::TouchButtonInput new [jint [expr {$MAX - 36}]] "Up Button"]
        my jset LEFT [::TouchButtonInput new [jint [expr {$MAX - 37}]] "Left Button"]
        my jset RIGHT [::TouchButtonInput new [jint [expr {$MAX - 38}]] "Right Button"]
        my jset DOWN [::TouchButtonInput new [jint [expr {$MAX - 39}]] "Down Button"]
        my jset NONE [::TouchButtonInput new [jint [expr {$MAX - 40}]] "No Button"]
    }
    

    method init {inputToGameKeyMapping} {
        if {[expr {![my jget initialized]}]} {
            my jset initialized true
            [my jget list] add [my jget UP]
            [my jget list] add [my jget LEFT]
            [my jget list] add [my jget RIGHT]
            [my jget list] add [my jget DOWN]
            [my jget list] add [my jget SPECIAL_BUTTON_TWO]
            [my jget list] add [my jget SPECIAL_BUTTON_FOUR]
            [my jget list] add [my jget SPECIAL_BUTTON_THREE]
            [my jget list] add [my jget SPECIAL_BUTTON_ONE]
            [my jget list] add [my jget SPECIAL_BUTTON_FIVE]
            [my jget list] add [my jget SPECIAL_BUTTON_SIX]
            [my jget list] add [my jget SPECIAL_BUTTON_SIX]
            [my jget list] add [my jget SPECIAL_BUTTON_SEVEN_TESTING_ONLY]
            [my jget list] add [my jget SPECIAL_BUTTON_EIGHT_TESTING_ONLY]
            my updateAllFromList [my jget list] $inputToGameKeyMapping
        }
    }
    

    method updateAll {inputToGameKeyMapping} {
        my updateAllFromList [my jget list] $inputToGameKeyMapping
    }
    

    method updateAllFromList {list inputToGameKeyMapping} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] appendint [$list size]] toString] [self] "updateAll"
        set touchButtonInput {}
        for {set index [jint [expr {[$list size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set touchButtonInput [[$list jget objectArray] get $index]
            $touchButtonInput update $inputToGameKeyMapping
        }
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::BasicTouchInputFactory {
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
        if {[expr {[::BasicTouchInputFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::BasicTouchInputFactory::staticSet_instance [::BasicTouchInputFactory new]
        }
        return [::BasicTouchInputFactory::staticGet_instance]
    }
}


