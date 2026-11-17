# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABTextFieldItem {
    superclass ::ABTextItem
}

oo::define ::ABTextFieldItem {
    method initFields_ABTextFieldItem {} {
        my jset font {}
        
        return
    }
    

    constructor {canvas visitor label value maxSize layout altText font backgroundBasicColor foregroundBasicColor} {
        next $label $layout $altText $backgroundBasicColor $foregroundBasicColor
        my initFields_ABTextFieldItem
        my jset font $font
    }
    

    method getLabel {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method setLabel {label} {
    }
    

    method getString {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method setString {string} {
    }
    

    method setFocus {state} {
    }
    

    method getFontHeight {} {
        return [[my jget font] getHeight]
    }
    

    method setBackgroundBasicColorP {basicColor} {
    }
    

    method setForegroundBasicColorP {basicColor} {
    }
}

namespace eval ::ABTextFieldItem {
}


