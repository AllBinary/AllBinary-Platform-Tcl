# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

oo::class create ::ObjectPermutationVisitor {
    superclass ::Visitor
}

oo::define ::ObjectPermutationVisitor {
    method initFields_ObjectPermutationVisitor {} {
        my jset data {}
        my jset stringBuilder {}
        
        my jset stringBuilder [::StringMaker new]
        return
    }
    

    constructor {data} {
        next
        my initFields_ObjectPermutationVisitor
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
        set tsUtil [::TsUtil::getInstance]
        set size [$data length]
        for {set i 0} {[expr {$i < $size}]} {jpostincr i 1} {
            $stringBuilder appendint [jint [$tsUtil hashCode1 [$data get $i]]]
            $stringBuilder append [[::CommonSeps::getInstance] jget SPACE]
        }
        puts [jstr [$stringBuilder toString]]
    }
}

namespace eval ::ObjectPermutationVisitor {
}


