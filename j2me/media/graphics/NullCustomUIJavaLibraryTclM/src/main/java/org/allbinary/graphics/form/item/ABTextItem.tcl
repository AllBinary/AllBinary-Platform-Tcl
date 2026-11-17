# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABTextItem {
    superclass ::CustomCustomItem
}

oo::define ::ABTextItem {
    method initFields_ABTextItem {} {
        return
    }
    

    constructor {label layout altText backgroundBasicColor foregroundBasicColor} {
        next $label $backgroundBasicColor $foregroundBasicColor
        my initFields_ABTextItem
    }
    

    method keyPressed {keyCode} {
    }
    

    method paintUnselected {graphics x y} {
    }
    

    method getLabelStringComponent {} {
        return [::ABStringComponent::staticGet_NULL_STRING_COMPONENT]
    }
    

    method getMinimumWidth {} {
        return [next]
    }
    

    method getMinimumHeight {} {
        return [next]
    }
    

    method getLabel {} {
        return [next]
    }
    

    method paintXY {graphics x y} {
        next $graphics $x $y
    }
}

namespace eval ::ABTextItem {
}


