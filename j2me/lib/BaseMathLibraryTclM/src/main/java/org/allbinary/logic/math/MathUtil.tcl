# Generated Code Do Not Modify
# package org.allbinary.logic.math

oo::class create ::MathUtil {
    superclass ::JObject
}

oo::define ::MathUtil {
    method initFields_MathUtil {} {
        my jset ACCURACY 0
        my jset ACCURACY 100
        return
    }

    constructor {} {
        next
        my initFields_MathUtil
    }
    
    

    method getTotalDigits {digits} {
        set total 0
        while {[expr {$digits > 0}]} {
            set digits [jdiv $digits 10]
            jpostincr total 1
        }
        return $total
    }
    

    method sqrt {value} {
        if {[expr {$value <= 1}]} {
            return $value
        }
        set accumulated [expr {$value >> 1}]
        set result [expr {([jint [expr {$accumulated + ([jdiv $value $accumulated])}]]) >> 1}]
        while 1 {
            set accumulated $result
            set result [expr {([jint [expr {$accumulated + ([jdiv $value $accumulated])}]]) >> 1}]
            if {!([expr {$accumulated > $result}])} break
        }
        return $accumulated
    }
    

    method sqrtd {x} {
        if {[expr {$x == 0}]} {
            return [expr {double(0.0)}]
        }
        if {[expr {$x < 0}]} {
            return [expr {double([expr {-1.0}])}]
        }
        set result [expr {double($x)}]
        for {set index 0} {[expr {$index < [my jget ACCURACY]}]} {jpostincr index 1} {
            set result [expr {([expr {$result + ([expr {[expr {double($x)}] / $result}])}]) / 2.0}]
        }
        return $result
    }
    

    method abs {value} {
        return [expr {([expr {$value < 0}]) ? [expr {-$value}] : $value}]
    }
    

    method abslong {value} {
        return [expr {([expr {$value < 0}]) ? [expr {-$value}] : $value}]
    }
    

    method min {value value2} {
        return [expr {([expr {$value <= $value2}]) ? $value : $value2}]
    }
    

    method max {value value2} {
        return [expr {([expr {$value >= $value2}]) ? $value : $value2}]
    }
}

namespace eval ::MathUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MathUtil new]
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
        return [::MathUtil::staticGet_instance]
    }
}


