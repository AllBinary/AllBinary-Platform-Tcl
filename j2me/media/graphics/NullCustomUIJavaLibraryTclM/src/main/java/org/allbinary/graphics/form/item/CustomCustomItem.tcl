# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::CustomCustomItem {
    superclass ::ABCustomItem
}

oo::define ::CustomCustomItem {
    method initFields_CustomCustomItem {} {
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        return
    }
    

    constructor {label backgroundBasicColor foregroundBasicColor} {
        next $label $backgroundBasicColor $foregroundBasicColor
        my initFields_CustomCustomItem
    }
    

    method updateMeasurement {graphics} {
    }
}

namespace eval ::CustomCustomItem {
}


