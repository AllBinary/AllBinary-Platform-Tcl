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

oo::class create ::CurrentlyPressedTouchButtonSingleton {
    superclass ::JObject
}

oo::define ::CurrentlyPressedTouchButtonSingleton {
    method initFields_CurrentlyPressedTouchButtonSingleton {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_CurrentlyPressedTouchButtonSingleton
    }
    

    method size {} {
        return [[my jget list] size]
    }
    

    method removeAt {index} {
        return [[my jget list] removeAt $index]
    }
    

    method remove {touchButtonInput} {
        return [[my jget list] remove $touchButtonInput]
    }
    

    method get {index} {
        return [[[my jget list] jget objectArray] get $index]
    }
    

    method contains {touchButtonInput} {
        return [[my jget list] contains $touchButtonInput]
    }
    

    method add {touchButtonInput} {
        [my jget list] add $touchButtonInput
    }
}

namespace eval ::CurrentlyPressedTouchButtonSingleton {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CurrentlyPressedTouchButtonSingleton new]
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
        return [::CurrentlyPressedTouchButtonSingleton::staticGet_instance]
    }
}


