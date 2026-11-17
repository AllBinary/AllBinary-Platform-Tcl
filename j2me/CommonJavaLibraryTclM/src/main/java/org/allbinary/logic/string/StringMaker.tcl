# Generated Code Do Not Modify
# package org.allbinary.logic.string

oo::class create ::StringMaker {
    superclass ::JObject
}

oo::define ::StringMaker {
    method initFields_StringMaker {} {
        my jset charArray {}
        my jset currentLength 0
        
        my jset currentLength 0
        return
    }
    

    constructor {} {
        next
        my initFields_StringMaker
        my jset charArray [jarray 20 0]
    }
    

    method append {string} {
        set stringLength [string length $string]
        my ensureCapacity [jint [expr {[my jget currentLength] + $stringLength}]]
        jgetchars $string 0 $stringLength [my jget charArray] [my jget currentLength]
        my jset currentLength [jint [expr {[my jget currentLength] + $stringLength}]]
        return [self]
    }
    

    method appendchar {c} {
        my ensureCapacity [jint [expr {[my jget currentLength] + 1}]]
        [my jget charArray] set [my jpostinc currentLength 1] $c
        return [self]
    }
    

    method appendCharArray {charArray start end} {
        my ensureCapacity [jint [expr {[my jget currentLength] + ([jint [expr {$end - $start}]])}]]
        for {set index $start} {[expr {$index < $end}]} {jpostincr index 1} {
            [my jget charArray] set [my jpostinc currentLength 1] [$charArray get $index]
        }
        return [self]
    }
    

    method appendbyte {b} {
        my append [jstr $b]
        return [self]
    }
    

    method appendshort {b} {
        my append [jstr $b]
        return [self]
    }
    

    method appendint {i} {
        my append [jstr $i]
        return [self]
    }
    

    method appendlong {l} {
        my append [jstr $l]
        return [self]
    }
    

    method appendfloat {f} {
        my append [jstr $f]
        return [self]
    }
    

    method appendboolean {bool} {
        if {$bool} {
            my ensureCapacity [jint [expr {[my jget currentLength] + 4}]]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "t" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "r" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "u" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "e" %c]
        } else {
            my ensureCapacity [jint [expr {[my jget currentLength] + 5}]]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "f" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "a" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "l" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "s" %c]
            [my jget charArray] set [my jpostinc currentLength 1] [scan "e" %c]
        }
        return [self]
    }
    

    method ensureCapacity {minSize} {
        set oldCapacity [[my jget charArray] length]
        if {[expr {$minSize > $oldCapacity}]} {
            set newCapacity [jint [expr {$oldCapacity * 3}]]
            if {[expr {$newCapacity < $minSize}]} {
                set newCapacity $minSize
            }
            set copy [jarray $newCapacity 0]
            set min [my min [[my jget charArray] length] $newCapacity]
            jarraycopy [my jget charArray] 0 $copy 0 $min
            my jset charArray $copy
        }
    }
    

    method min {value value2} {
        return [expr {([expr {$value <= $value2}]) ? $value : $value2}]
    }
    

    method delete {start end} {
        my jset currentLength [jint [expr {[my jget currentLength] - ([jint [expr {$end - $start}]])}]]
        return [self]
    }
    

    method length {} {
        return [my jget currentLength]
    }
    

    method toString {} {
        return [jfromchars [my jget charArray] 0 [my jget currentLength]]
    }
}

namespace eval ::StringMaker {
}


