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
# package org.allbinary.logic.java.byteutil

oo::class create ::ByteUtil {
    superclass ::JObject
}

oo::define ::ByteUtil {
    method initFields_ByteUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ByteUtil
    }
    

    method xor {array mask} {
        set bytes [jarray [$array length] 0]
        set size [$array length]
        set index 0
        set currentByte 0
        while {[expr {$index < $size}]} {
            set currentByte [$array get $index]
            $bytes set $index [jbyte ([expr {$currentByte ^ $mask}])]
            jpostincr index 1
        }
        return $bytes
    }
    

    method not {array} {
        set bytes [jarray [$array length] 0]
        set size [$array length]
        set index 0
        while {[expr {$index < $size}]} {
            $bytes set $index [jbyte [expr {~[$array get $index]}]]
            jpostincr index 1
        }
        return $bytes
    }
    

    method xorByte {array index} {
        set mask 0
        if {[expr {$index == 0}]} {
            set mask 1
        }
        if {[expr {$index == 1}]} {
            set mask 2
        }
        if {[expr {$index == 2}]} {
            set mask 4
        }
        if {[expr {$index == 3}]} {
            set mask 8
        }
        if {[expr {$index == 4}]} {
            set mask 16
        }
        if {[expr {$index == 5}]} {
            set mask 32
        }
        if {[expr {$index == 6}]} {
            set mask 64
        }
        if {[expr {$index == 7}]} {
            set mask [jbyte [expr {-127}]]
        }
        return [my xor $array $mask]
    }
    

    method compare {newByteArray oldByteArray} {
        if {[expr {[$newByteArray length] != [$oldByteArray length]}]} {
            return false
        } else {
        }
        set size [$newByteArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[$newByteArray get $index] != [$oldByteArray get $index]}]} {
                return false
            }
        }
        return true
    }
    

    method compareWithStats {newByteArray newSize oldByteArray stats} {
        if {[expr {$newSize != [$oldByteArray length]}]} {
            $stats set 0 [expr {-1}]
            $stats set 2 $newSize
            $stats set 3 [$oldByteArray length]
            return false
        } else {
            $stats set 0 $newSize
        }
        $stats set 1 0
        set size $newSize
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[$newByteArray get $index] != [$oldByteArray get $index]}]} {
                return false
            }
            $stats postinc 1 1
        }
        return true
    }
}

namespace eval ::ByteUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ByteUtil new]
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
        return [::ByteUtil::staticGet_instance]
    }
}


