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
# package org.allbinary.graphics.form

oo::class create ::ScrollCurrentSelectionForm {
    superclass ::ScrollSelectionForm
}

oo::define ::ScrollCurrentSelectionForm {
    method initFields_ScrollCurrentSelectionForm {} {
        my jset moveForSmallScreen false
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset processor {}
        my jset preItemIndexDx {}
        my jset dx 0
        my jset dy 0
        my jset maxWidth 0
        
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset processor [::Processor::getInstance]
        my jset preItemIndexDx [::ItemIndexDx::getInstance]
        my jset dx 0
        my jset dy 0
        my jset maxWidth 0
        return
    }
    

    constructor {title items formPaintableFactory border adjustedExtraBorder moveForSmallScreen backgroundBasicColor foregroundBasicColor} {
        next $title $items $formPaintableFactory $border $adjustedExtraBorder $backgroundBasicColor $foregroundBasicColor
        my initFields_ScrollCurrentSelectionForm
        my jset moveForSmallScreen $moveForSmallScreen
    }
    

    method init {rectangle formType} {
        next $rectangle $formType
        set formTypeFactory [::FormTypeFactory::getInstance]
        if {[expr {$formType eq [$formTypeFactory jget TEMP_HORIZONTAL_FORM]}]} {
            my jset processor [::TempHorizontalFormProcessor new [self]]
            my jset preItemIndexDx [::TempHorizontalItemIndexDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget HORIZONTAL_FORM]}]} {
            my jset processor [::HorizontalFormProcessor new [self]]
            my jset preItemIndexDx [::HorizontalItemIndexDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
            my jset processor [::VerticalFormProcessor new [self]]
            my jset preItemIndexDx [::VerticalItemIndexDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget NULL_FORM_TYPE]}]} {
        } else {
            [my jget logUtil] putF [$formTypeFactory jget UNK] [self] [[my jget commonStrings] jget INIT]
        }
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method updateMeasurement {graphics} {
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method processTempHorizontalForm {} {
        my jset dx [expr {[expr {[my jget x] - 30}] + ([expr {[[my jget rectangle] getWidth] >> 1}])}]
        my jset dy [my jget y]
    }
    

    method processHorizontalForm {} {
        set size [my size]
        set totalWidth 0
        set item {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set item [my get $index]
            set totalWidth [jint [expr {$totalWidth + [expr {[$item getMinimumWidth] + [my jget border]}]}]]
        }
        my jset dx [expr {[expr {[my jget x] + ([expr {[[my jget rectangle] getWidth] >> 1}])}] - ([expr {$totalWidth >> 1}])}]
        my jset dy [expr {[my jget y] + ([expr {[[my jget rectangle] getHeight] >> 1}])}]
        if {[my jget moveForSmallScreen]} {
            set maxTitleHeight 175
            if {[expr {[my jget dy] < $maxTitleHeight}]} {
                my jset dy $maxTitleHeight
            }
        }
    }
    

    method processVerticalForm {} {
        set totalHeight 0
        set size [my size]
        set item2 {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set item2 [my get $index]
            if {[expr {[my jget maxWidth] < [$item2 getMinimumWidth]}]} {
                my jset maxWidth [$item2 getMinimumWidth]
            }
            set totalHeight [jint [expr {$totalHeight + [expr {[$item2 getMinimumHeight] + [my jget border]}]}]]
        }
        my jset dx ([expr {([expr {[[my jget rectangle] getWidth] - [my jget maxWidth]}]) / 2}])
        if {[expr {[my size] > 0}]} {
            my jset dy [expr {[my jget y] + ([expr {([expr {[[my jget rectangle] getHeight] - $totalHeight}]) / 2}])}]
            if {[my jget moveForSmallScreen]} {
                set maxTitleHeight 175
                if {[expr {[my jget dy] < $maxTitleHeight}]} {
                    my jset dy $maxTitleHeight
                }
            }
        } else {
            my jset dy [my jget y]
        }
    }
    

    method getXTempHorizontalForm {index item dx dy} {
        return [my getDiffX $item]
    }
    

    method getXHorizontalForm {index item dx dy} {
        return 0
    }
    

    method getXVerticalForm {index item dx dy} {
        return [expr {[my getDiffX $item] + [my jget halfBorder]}]
    }
    

    method getDiffX {item} {
        return ([expr {([expr {[my jget maxWidth] - [$item getMinimumWidth]}]) >> 1}])
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method getDy {} {
        return [my jget dy]
    }
    

    method paint {graphics} {
        try {
            [my jget processor] process
            set delta 0
            set deltaX [my getDx]
            set deltaY [my getDy]
            set size [my size]
            set formTypeFactory [::FormTypeFactory::getInstance]
            set item {}
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set item [my get $index]
                set diffX [[my jget preItemIndexDx] getDx $index $item [my jget dx] [my jget dy]]
                if {[expr {$index == [my getSelectedIndex]}]} {
                    set delta [my paintItem $graphics $index $item [jint [expr {$deltaX + $diffX}]] $deltaY]
                    [my jget paintable] paint $graphics $index [jint [expr {$deltaX + $diffX}]] $deltaY
                } else {
                    set delta [my paintUnselectedItem $graphics $index $item [jint [expr {$deltaX + $diffX}]] $deltaY]
                    [my jget paintable] paint $graphics $index [jint [expr {$deltaX + $diffX}]] $deltaY
                }
                if {[expr {[my jget formType] == [$formTypeFactory jget TEMP_HORIZONTAL_FORM]}]} {
                } elseif {[expr {[my jget formType] == [$formTypeFactory jget HORIZONTAL_FORM]}]} {
                    set deltaX $delta
                } elseif {[expr {[my jget formType] == [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
                    set deltaY $delta
                } else {
                    error [jexception Exception [$formTypeFactory jget UNK]]
                }
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget PAINT] $e
        }
    }
}

namespace eval ::ScrollCurrentSelectionForm {
}


