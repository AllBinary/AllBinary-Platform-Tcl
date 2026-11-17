# Generated Code Do Not Modify
# package org.allbinary.util

#This is a very fast and simple resizable list.
oo::class create ::BasicArrayList {
    superclass ::JObject
}

oo::define ::BasicArrayList {
    method initFields_BasicArrayList {} {
        my jset arrayUtil {}
        my jset objectArray {}
        my jset currentIndex 0
        my jset arrayUtil [::ArrayUtil::getInstance]
        
        my jset currentIndex 0
        return
    }
    

    constructor {objectArray} {
        next
        my initFields_BasicArrayList
        my jset objectArray $objectArray
    }
    

    method addAt {index element} {
        if {[expr {[expr {$index > [my jget currentIndex]}] || [expr {$index < 0}]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[::CommonLabels::getInstance] jget INDEX_LABEL]
            $stringBuffer appendint $index
            $stringBuffer append [::BasicArrayList::staticGet_SIZE]
            $stringBuffer appendint [my jget currentIndex]
            error [jexception IndexOutOfBoundsException [$stringBuffer toString]]
        }
        my ensureCapacity [jint [expr {[my jget currentIndex] + 1}]]
        jarraycopy [my jget objectArray] $index [my jget objectArray] [jint [expr {$index + 1}]] [jint [expr {[my jget currentIndex] - $index}]]
        [my jget objectArray] set $index $element
        my jpostinc currentIndex 1
    }
    

    method add {anyType} {
        my ensureCapacity [jint [expr {[my jget currentIndex] + 1}]]
        [my jget objectArray] set [my jpostinc currentIndex 1] $anyType
        return true
    }
    

    method removeAt {index} {
        if {[expr {$index >= [my jget currentIndex]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[::CommonLabels::getInstance] jget INDEX_LABEL]
            $stringBuffer appendint $index
            $stringBuffer append [::BasicArrayList::staticGet_SIZE]
            $stringBuffer appendint [my jget currentIndex]
            error [jexception IndexOutOfBoundsException [$stringBuffer toString]]
        }
        set oldValue [[my jget objectArray] get $index]
        set numMoved [jint [expr {[jint [expr {[my jget currentIndex] - $index}]] - 1}]]
        if {[expr {$numMoved > 0}]} {
            jarraycopy [my jget objectArray] [jint [expr {$index + 1}]] [my jget objectArray] $index $numMoved
        }
        [my jget objectArray] set [my jpreinc currentIndex -1] {}
        return $oldValue
    }
    

    method remove {anyType} {
        if {[expr {$anyType eq {}}]} {
            for {set index 0} {[expr {$index < [my jget currentIndex]}]} {jpostincr index 1} {
                if {[expr {[[my jget objectArray] get $index] eq {}}]} {
                    set numMoved [jint [expr {[jint [expr {[my jget currentIndex] - $index}]] - 1}]]
                    if {[expr {$numMoved > 0}]} {
                        jarraycopy [my jget objectArray] [jint [expr {$index + 1}]] [my jget objectArray] $index $numMoved
                    }
                    [my jget objectArray] set [my jpreinc currentIndex -1] {}
                    return true
                }
            }
        } else {
            for {set index 0} {[expr {$index < [my jget currentIndex]}]} {jpostincr index 1} {
                if {[expr {[expr {$anyType eq [[my jget objectArray] get $index]}] || [$anyType equals [[my jget objectArray] get $index]]}]} {
                    set numMoved [jint [expr {[jint [expr {[my jget currentIndex] - $index}]] - 1}]]
                    if {[expr {$numMoved > 0}]} {
                        jarraycopy [my jget objectArray] [jint [expr {$index + 1}]] [my jget objectArray] $index $numMoved
                    }
                    [my jget objectArray] set [my jpreinc currentIndex -1] {}
                    return true
                }
            }
        }
        return false
    }
    

    method removeAll2 {list} {
        set result true
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[my remove [$list get $index]]} {
            } else {
                set result false
            }
        }
        return $result
    }
    

    method addAll2 {list} {
        my ensureCapacity [expr {[my jget currentIndex] + [$list jget currentIndex]}]
        set listSize [$list jget currentIndex]
        for {set index 0} {[expr {$index < $listSize}]} {jpostincr index 1} {
            [my jget objectArray] set [my jpostinc currentIndex 1] [[$list jget objectArray] get $index]
        }
        return true
    }
    

    method addAllList {list} {
        set newObjectArray [$list toArray]
        return [my addAll $newObjectArray]
    }
    

    method addAll {newObjectArray} {
        set numSize [$newObjectArray length]
        my ensureCapacity [jint [expr {[my jget currentIndex] + $numSize}]]
        jarraycopy $newObjectArray 0 [my jget objectArray] [my jget currentIndex] $numSize
        my jset currentIndex [jint [expr {[my jget currentIndex] + $numSize}]]
        return [expr {$numSize != 0}]
    }
    

    method ensureCapacity {minSize} {
        set oldCapacity [[my jget objectArray] length]
        if {[expr {$minSize > $oldCapacity}]} {
            set newCapacity [jint [expr {([expr {([jint [expr {$oldCapacity * 3}]]) >> 1}]) + 1}]]
            if {[expr {$newCapacity < $minSize}]} {
                set newCapacity $minSize
            }
            my jset objectArray [[my jget arrayUtil] copyOf [my jget objectArray] $newCapacity]
        }
    }
    

    method trimToSize {} {
        set oldCapacity [[my jget objectArray] length]
        if {[expr {[my jget currentIndex] < $oldCapacity}]} {
            my jset objectArray [[my jget arrayUtil] copyOf [my jget objectArray] [my jget currentIndex]]
        }
    }
    

    method indexOf {anyType} {
        if {[expr {$anyType eq {}}]} {
            for {set i 0} {[expr {$i < [my jget currentIndex]}]} {jpostincr i 1} {
                if {[expr {[[my jget objectArray] get $i] eq {}}]} {
                    return $i
                }
            }
        } else {
            for {set i 0} {[expr {$i < [my jget currentIndex]}]} {jpostincr i 1} {
                if {[$anyType equals [[my jget objectArray] get $i]]} {
                    return $i
                }
            }
        }
        return [expr {-1}]
    }
    

    method lastIndexOf {anyType} {
        if {[expr {$anyType eq {}}]} {
            for {set i [jint [expr {[my jget currentIndex] - 1}]]} {[expr {$i >= 0}]} {jpostincr i -1} {
                if {[expr {[[my jget objectArray] get $i] eq {}}]} {
                    return $i
                }
            }
        } else {
            for {set i [jint [expr {[my jget currentIndex] - 1}]]} {[expr {$i >= 0}]} {jpostincr i -1} {
                if {[$anyType equals [[my jget objectArray] get $i]]} {
                    return $i
                }
            }
        }
        return [expr {-1}]
    }
    

    method get {index} {
        if {[expr {$index >= [my jget currentIndex]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[::CommonLabels::getInstance] jget INDEX_LABEL]
            $stringBuffer appendint $index
            $stringBuffer append [::BasicArrayList::staticGet_SIZE]
            $stringBuffer appendint [my jget currentIndex]
            error [jexception IndexOutOfBoundsException [$stringBuffer toString]]
        }
        return [[my jget objectArray] get $index]
    }
    

    method set {index element} {
        if {[expr {$index >= [my jget currentIndex]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[::CommonLabels::getInstance] jget INDEX_LABEL]
            $stringBuffer appendint $index
            $stringBuffer append [::BasicArrayList::staticGet_SIZE]
            $stringBuffer appendint [my jget currentIndex]
            error [jexception IndexOutOfBoundsException [$stringBuffer toString]]
        }
        set oldValue [[my jget objectArray] get $index]
        [my jget objectArray] set $index $element
        return $oldValue
    }
    

    method clear {} {
        for {set i 0} {[expr {$i < [my jget currentIndex]}]} {jpostincr i 1} {
            [my jget objectArray] set $i {}
        }
        my jset currentIndex 0
    }
    

    method size {} {
        return [my jget currentIndex]
    }
    

    method isEmpty {} {
        return [expr {[my jget currentIndex] == 0}]
    }
    

    method contains {anyType} {
        return [expr {[my indexOf $anyType] >= 0}]
    }
    

    method toArray {} {
        return [[my jget arrayUtil] copyOf [my jget objectArray] [my jget currentIndex]]
    }
    

    method toArrayType {objectArray} {
        if {[expr {[$objectArray length] < [my jget currentIndex]}]} {
            return [[my jget arrayUtil] copyOfType [my jget objectArray] [my jget currentIndex] [jclassname $objectArray]]
        }
        jarraycopy [my jget objectArray] 0 $objectArray 0 [my jget currentIndex]
        if {[expr {[$objectArray length] > [my jget currentIndex]}]} {
            $objectArray set [my jget currentIndex] {}
        }
        return $objectArray
    }
    

    method clone {} {
        set size [my size]
        set list [::BasicArrayListS new $size]
        set anyType {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [[my jget objectArray] get $index]
            $list add $anyType
        }
        return $list
    }
    

    method toString {} {
        set COMMA_SEP [[::CommonSeps::getInstance] jget COMMA_SEP]
        set stringBuffer [::StringMaker new]
        for {set index 0} {[expr {$index < [my jget currentIndex]}]} {jpostincr index 1} {
            $stringBuffer append [[[my jget objectArray] get $index] toString]
            $stringBuffer append $COMMA_SEP
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::BasicArrayList {
    variable SIZEValue {}
    variable SIZESet 0
    proc staticGet_SIZE {} {
        variable SIZEValue
        variable SIZESet
        if {!$SIZESet} {
            set SIZESet 1
            set SIZEValue ", Size: "
        }
        return $SIZEValue
    }
    proc staticSet_SIZE {value} {
        variable SIZEValue
        variable SIZESet
        set SIZESet 1
        set SIZEValue $value
    }
}


