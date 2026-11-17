#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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
# package org.allbinary

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
oo::class create ::MIDPUtil {
    superclass ::JObject
}

oo::define ::MIDPUtil {
    method initFields_MIDPUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_MIDPUtil
    }
    
    

    method createImageWH {width height} {
        return [::Image::createImage $width $height]
    }
    

    method createImageFromByteArray {imageData imageOffset imageLength} {
        return [::Image::createImage $imageData $imageOffset $imageLength]
    }
    

    method createImageFromInputStream {inputStream} {
        return [::Image::createImage $inputStream]
    }
    

    method createPlayerFromInputStream {inputStream type} {
        return [::Manager::createPlayer $inputStream $type]
    }
    

    method appendItem {form item} {
        return [$form append $item]
    }
}

namespace eval ::MIDPUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MIDPUtil new]
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
        return [::MIDPUtil::staticGet_instance]
    }
}


