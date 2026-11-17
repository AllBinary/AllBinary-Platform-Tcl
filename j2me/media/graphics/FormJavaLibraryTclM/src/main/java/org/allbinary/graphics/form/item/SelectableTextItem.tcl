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
# package org.allbinary.graphics.form.item

oo::class create ::SelectableTextItem {
    superclass ::ABTextItem
}

oo::define ::SelectableTextItem {
    method initFields_SelectableTextItem {} {
        return
    }
    

    constructor {label layout altText backgroundBasicColor foregroundBasicColor} {
        next $label $layout $altText $backgroundBasicColor $foregroundBasicColor
        my initFields_SelectableTextItem
    }
    

    method isFocusable {} {
        return true
    }
    

    method paintXY {graphics x y} {
        [my jget myFontProcessor] process $graphics
        set stringComponent [my getLabelStringComponent]
        if {[expr {$stringComponent ne {}}]} {
            $graphics setColor [[$stringComponent getForegroundBasicColor] intValue]
        }
        $graphics drawString [my getLabel] [jint [expr {$x + 2}]] $y 0
    }
}

namespace eval ::SelectableTextItem {
}


