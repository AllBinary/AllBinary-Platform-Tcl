# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

oo::class create ::IntPermutationVisitor {
    superclass ::Visitor
}

oo::define ::IntPermutationVisitor {
    method initFields_IntPermutationVisitor {} {
        my jset data {}
        my jset stringBuilder {}
        
        my jset stringBuilder [::StringMaker new]
        return
    }
    

    constructor {data} {
        next
        my initFields_IntPermutationVisitor
        my jset data $data
    }
    

    method visit {anyType} {
        [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
        my print [my jget data] [my jget stringBuilder]
        return [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    

    method print {data} {
        set stringBuilder [::StringMaker new]
        my print $data $stringBuilder
    }
    

    method print {data stringBuilder} {
        set commonSeps [::CommonSeps::getInstance]
        set size [$data length]
        for {set i 0} {[expr {$i < $size}]} {jpostincr i 1} {
            $stringBuilder appendint [$data get $i]
            $stringBuilder append [$commonSeps jget SPACE]
        }
        puts [jstr [$stringBuilder toString]]
    }
}

namespace eval ::IntPermutationVisitor {
}


