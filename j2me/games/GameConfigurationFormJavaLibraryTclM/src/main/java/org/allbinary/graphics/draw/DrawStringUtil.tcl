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
# package org.allbinary.graphics.draw

oo::class create ::DrawStringUtil {
    superclass ::JObject
}

oo::define ::DrawStringUtil {
    method initFields_DrawStringUtil {} {
        my jset EMPTY_STRING {}
        my jset anchor 0
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }

    constructor {} {
        next
        my initFields_DrawStringUtil
    }
    
    

    method drawCenterString {graphics string offset length x y} {
        set width ([expr {[[$graphics getFont] substringWidth $string $offset $length] >> 1}])
        try {
            $graphics drawSubstring $string $offset $length [jint [expr {$x - $width}]] $y [my jget anchor]
        } on error {e} {
            ::PreLogUtil::put [[[[[[[[::StringMaker new] append "Exception: stringLength: "] appendint [string length $string]] append " offset: "] appendint $offset] append " currentLength: "] appendint $length] toString] [self] "drawCenterString"
        }
    }
    

    method drawCenterStrings {graphics stringArray maxWidth charHeight x y} {
        set extraLines 0
        for {set index 0} {[expr {$index < [$stringArray length]}]} {jpostincr index 1} {
            set string [$stringArray get $index]
            if {[expr {$string ne [my jget EMPTY_STRING]}]} {
                set width [[$graphics getFont] stringWidth $string]
                set minTotalLines 1
                if {[expr {$width > $maxWidth}]} {
                    set minTotalLines [jint [expr {([jdiv $width $maxWidth]) + 1}]]
                }
                set linePortion [jdiv [string length $string] $minTotalLines]
                set offset 0
                set currentLength $linePortion
                set size [string length $string]
                while {[expr {$offset < $size}]} {
                    if {[expr {[jint [expr {$offset + $currentLength}]] > $size}]} {
                        set currentLength [jint [expr {$size - $offset}]]
                    }
                    if {[expr {[jint [expr {$offset + $currentLength}]] != $size}]} {
                        while {[expr {[expr {$currentLength > 0}] && [expr {[[$stringArray get $index] charAt [jint [expr {$offset + $currentLength}]]] != [scan " " %c]}]}]} {
                            jpostincr currentLength -1
                        }
                        if {[expr {$currentLength <= 4}]} {
                            set currentLength $linePortion
                        }
                    }
                    my drawCenterString $graphics $string $offset $currentLength $x [jint [expr {$y + ([jint [expr {([jint [expr {$index + [jpostincr extraLines 1]}]]) * $charHeight}]])}]]
                    set offset [jint [expr {$offset + $currentLength}]]
                    set currentLength $linePortion
                }
                jpostincr extraLines -1
            }
        }
    }
}

namespace eval ::DrawStringUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DrawStringUtil new]
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
        return [::DrawStringUtil::staticGet_instance]
    }
}


