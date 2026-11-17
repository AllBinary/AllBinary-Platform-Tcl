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
# package org.allbinary.string

oo::class create ::CommonPhoneStrings {
    superclass ::JObject
}

oo::define ::CommonPhoneStrings {
    method initFields_CommonPhoneStrings {} {
        my jset UP {}
        my jset DOWN {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset ZERO {}
        my jset ONE {}
        my jset TWO {}
        my jset THREE {}
        my jset FOUR {}
        my jset FIVE {}
        my jset SIX {}
        my jset SEVEN {}
        my jset EIGHT {}
        my jset NINE {}
        my jset POUND {}
        my jset STAR {}
        my jset FIRE {}
        my jset UP "UP"
        my jset DOWN "DOWN"
        my jset LEFT "LEFT"
        my jset RIGHT "RIGHT"
        my jset ZERO "0"
        my jset ONE "1"
        my jset TWO "2"
        my jset THREE "3"
        my jset FOUR "4"
        my jset FIVE "5"
        my jset SIX "6"
        my jset SEVEN "7"
        my jset EIGHT "8"
        my jset NINE "9"
        my jset POUND "#"
        my jset STAR "*"
        my jset FIRE "FIRE"
        return
    }

    constructor {} {
        next
        my initFields_CommonPhoneStrings
    }
    
}

namespace eval ::CommonPhoneStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonPhoneStrings new]
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
        return [::CommonPhoneStrings::staticGet_instance]
    }
}


