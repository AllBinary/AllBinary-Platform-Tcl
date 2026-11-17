# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

oo::class create ::ScreenRelationalUtil {
    superclass ::JObject
}

oo::define ::ScreenRelationalUtil {
    method initFields_ScreenRelationalUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_ScreenRelationalUtil
    }
    
    

    method getScaleImage {image} {
        return [my getScaleWH [$image getWidth] [$image getHeight]]
    }
    

    method getScaleWH {aWidth aHeight} {
        return [my getScaleWHA $aWidth $aHeight 20]
    }
    

    method getScaleWHA {aWidth aHeight add} {
        set displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        set last [$displayInfoSingleton getLast]
        set width [expr {double([$last get [$displayInfoSingleton jget WIDTH]])}]
        set height [expr {double([$last get [$displayInfoSingleton jget HEIGHT]])}]
        set largestSize $width
        if {[expr {$largestSize < $height}]} {
            set largestSize $height
        }
        set scale [expr {($largestSize) / [expr {double($aWidth)}]}]
        return $scale
    }
    

    method getScaledHeight {aWidth aHeight} {
        return [jint [jd2i ([expr {[my getScaleWH $aWidth $aHeight] * [expr {double($aHeight)}]}])]]
    }
    

    method getScaledHeightAdd {aWidth aHeight add} {
        return [jint [jd2i ([expr {[my getScaleWHA $aWidth $aHeight $add] * [expr {double($aHeight)}]}])]]
    }
}

namespace eval ::ScreenRelationalUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ScreenRelationalUtil new]
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
        return [::ScreenRelationalUtil::staticGet_instance]
    }
}


