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

oo::class create ::KeyValueDrawString {
    superclass ::JObject
}

oo::define ::KeyValueDrawString {
    method initFields_KeyValueDrawString {} {
        my jset myFontProcessor {}
        my jset LABEL {}
        my jset labelX 0
        my jset valueX 0
        my jset value {}
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        
        
        my jset valueX 0
        my jset value [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {label x} {
        next
        my initFields_KeyValueDrawString
        my jset LABEL $label
        my jset labelX $x
    }
    

    method updateMeasurement {graphics} {
        set labelWidth [expr {[[$graphics getFont] stringWidth [my jget LABEL]] - [string length [my jget LABEL]]}]
        my jset valueX [jint [expr {$labelWidth + [my jget labelX]}]]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics y} {
        [my jget myFontProcessor] process $graphics
        $graphics drawString [my jget LABEL] [my jget labelX] $y 0
        $graphics drawString [my jget value] [my jget valueX] $y 0
    }
    

    method update {value} {
        my jset value $value
    }
}

namespace eval ::KeyValueDrawString {
}


