# Generated Code Do Not Modify
# package org.allbinary.util

oo::class create ::ArrayUtil {
    superclass ::JObject
}

oo::define ::ArrayUtil {
    method initFields_ArrayUtil {} {
        my jset mathUtil {}
        my jset mathUtil [::MathUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_ArrayUtil
    }
    
    

    method copyOf {original newLength} {
        return [my copyOfType $original $newLength [jclassname $original]]
    }
    

    method copyOfType {original newLength newType} {
        set copy [jarray $newLength {}]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfbyte {original newLength} {
        set copy [jarray $newLength 0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfshort {original newLength} {
        set copy [jarray $newLength 0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfint {original newLength} {
        set copy [jarray $newLength 0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOflong {original newLength} {
        set copy [jarray $newLength 0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfchar {original newLength} {
        set copy [jarray $newLength 0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOffloat {original newLength} {
        set copy [jarray $newLength 0.0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfdouble {original newLength} {
        set copy [jarray $newLength 0.0]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method copyOfboolean {original newLength} {
        set copy [jarray $newLength false]
        jarraycopy $original 0 $copy 0 [[my jget mathUtil] min [$original length] $newLength]
        return $copy
    }
    

    method reverse {intArray} {
        set length [jint [expr {[$intArray length] - 1}]]
        set temp 0
        set size [jdiv $length 2]
        for {set index 0} {[expr {$index <= $size}]} {jpostincr index 1} {
            set temp [$intArray get $index]
            $intArray set $index [$intArray get [jint [expr {$length - $index}]]]
            $intArray set [jint [expr {$length - $index}]] $temp
        }
    }
    

    method flip {intArray width height} {
        set length [jint [expr {$height - 1}]]
        set temp 0
        set index 0
        set rowIndex 0
        for {set y 0} {[expr {$y <= [jdiv $length 2]}]} {jpostincr y 1} {
            for {set x 0} {[expr {$x < $width}]} {jpostincr x 1} {
                set rowIndex ([jint [expr {([jint [expr {$length - $y}]]) * $width}]])
                set index [jint [expr {$x + ([jint [expr {$y * $width}]])}]]
                set temp [$intArray get $index]
                $intArray set $index [$intArray get [jint [expr {$rowIndex + $x}]]]
                $intArray set [jint [expr {$rowIndex + $x}]] $temp
            }
        }
    }
    

    method toStringFromTwoDimensionaArray {twoDimensionalIntArray} {
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        set endIndex [$twoDimensionalIntArray length]
        set endIndex2 [[$twoDimensionalIntArray get 0] length]
        for {set index 0} {[expr {$index < $endIndex}]} {jpostincr index 1} {
            $stringBuffer append [$commonSeps jget BRACE_OPEN]
            for {set index2 0} {[expr {$index2 < $endIndex2}]} {jpostincr index2 1} {
                $stringBuffer appendint [jint [[$twoDimensionalIntArray get $index] get $index2]]
                $stringBuffer append [$commonSeps jget COMMA_SEP]
            }
            $stringBuffer append [$commonSeps jget BRACE_CLOSE]
            $stringBuffer append [$commonSeps jget NEW_LINE]
        }
        return [$stringBuffer toString]
    }
    

    method toStringFromObjectArray {objectArray} {
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        for {set index 0} {[expr {$index < [$objectArray length]}]} {jpostincr index 1} {
            $stringBuffer append [[::StringUtil::getInstance] toString1 [$objectArray get $index]]
            $stringBuffer append [$commonSeps jget COMMA_SEP]
        }
        return [$stringBuffer toString]
    }
    

    method toStringFromByteArray {byteArray} {
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        for {set index 0} {[expr {$index < [$byteArray length]}]} {jpostincr index 1} {
            $stringBuffer appendbyte [$byteArray get $index]
            $stringBuffer append [$commonSeps jget COMMA_SEP]
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::ArrayUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ArrayUtil new]
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
        return [::ArrayUtil::staticGet_instance]
    }
}


