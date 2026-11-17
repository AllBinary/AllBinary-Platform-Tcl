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
# package org.allbinary.logic.math

oo::class create ::PrimitiveLongSingleton {
    superclass ::JObject
}

oo::define ::PrimitiveLongSingleton {
    method initFields_PrimitiveLongSingleton {} {
        my jset UNK {}
        my jset NUMBER_ARRAY {}
        my jset NUMBER_CHAR_ARRAY {}
        my jset NUMBER_CHAR_ARRAYS {}
        my jset ZERO {}
        my jset UNK [jarrayfrom [list [scan "U" %c] [scan "n" %c] [scan "k" %c]]]
        my jset NUMBER_ARRAY [jarrayfrom [list 0 1 2 3 4 5 6 7 8 9]]
        my jset NUMBER_CHAR_ARRAY [jarrayfrom [list [scan "0" %c] [scan "1" %c] [scan "2" %c] [scan "3" %c] [scan "4" %c] [scan "5" %c] [scan "6" %c] [scan "7" %c] [scan "8" %c] [scan "9" %c]]]
        my jset NUMBER_CHAR_ARRAYS [jarrayfrom [list [jarrayfrom [list [scan "0" %c]]] [jarrayfrom [list [scan "1" %c]]] [jarrayfrom [list [scan "2" %c]]] [jarrayfrom [list [scan "3" %c]]] [jarrayfrom [list [scan "4" %c]]] [jarrayfrom [list [scan "5" %c]]] [jarrayfrom [list [scan "6" %c]]] [jarrayfrom [list [scan "7" %c]]] [jarrayfrom [list [scan "8" %c]]] [jarrayfrom [list [scan "9" %c]]]]]
        my jset ZERO [jarrayfrom [list [[my jget NUMBER_CHAR_ARRAY] get 0]]]
        return
    }

    constructor {} {
        next
        my initFields_PrimitiveLongSingleton
    }
    
    

    method getNumberFromChar {numberAsChar} {
        set size [[my jget NUMBER_CHAR_ARRAY] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[[my jget NUMBER_CHAR_ARRAY] get $index] == $numberAsChar}]} {
                return [[my jget NUMBER_ARRAY] get $index]
            }
        }
        error [jexception Exception [[[[::StringMaker new] append "numberAsChar was not in array: "] appendchar $numberAsChar] toString]]
    }
}

namespace eval ::PrimitiveLongSingleton {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PrimitiveLongSingleton new]
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
        return [::PrimitiveLongSingleton::staticGet_instance]
    }
}


