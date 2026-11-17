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

oo::class create ::CommandCurrentSelectionForm {
    superclass ::ScrollCurrentSelectionForm
}

oo::define ::CommandCurrentSelectionForm {
    method initFields_CommandCurrentSelectionForm {} {
        my jset selectedAnimationArray {}
        my jset unSelectedAnimationArray {}
        my jset selectedAnimationArray [jarray 16 {}]
        my jset unSelectedAnimationArray [jarray 16 {}]
        return
    }
    

    constructor {title items border moveForSmallScreen backgroundBasicColor foregroundBasicColor} {
        next $title $items [::ItemPaintableFactory::getInstance] $border [expr {-3}] $moveForSmallScreen $backgroundBasicColor $foregroundBasicColor
        my initFields_CommandCurrentSelectionForm
        my initAnimations
        my addAll $items
    }
    

    method updateMeasurement {graphics} {
        my updateAll $graphics [my getAllitems]
        next $graphics
    }
    

    method initAnimations {} {
        set nullAnimation [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        for {set index [[my jget selectedAnimationArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [my jget selectedAnimationArray] set $index $nullAnimation
        }
        for {set index [[my jget unSelectedAnimationArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [my jget unSelectedAnimationArray] set $index $nullAnimation
        }
    }
    

    method addAll {items} {
        for {set index [$items length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            my addAt $index [$items get $index]
        }
    }
    

    method addAt {index item} {
        set basicColorFactory [::BasicColorFactory::getInstance]
        set buttonColor [$basicColorFactory jget TRANSPARENT_GREY]
        set selectedButtonColor [$basicColorFactory jget TRANSPARENT_RED]
        set width [$item getMinimumWidth]
        set height [$item getMinimumHeight]
        set adjustedBorder 3
        set offset [expr {-([expr {[my jget halfBorder] + $adjustedBorder}])}]
        set rectWidth [expr {[expr {$width + [my jget border]}] - $adjustedBorder}]
        set rectHeight [expr {[expr {$height + [my jget border]}] - $adjustedBorder}]
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
            [my jget selectedAnimationArray] set $index [::RectangleAdjustedAnimation new $rectWidth $rectHeight $offset $offset $selectedButtonColor]
        } else {
            [my jget selectedAnimationArray] set $index [::RectangleFilledAdjustedAnimation new $rectWidth $rectHeight $offset $offset $selectedButtonColor]
        }
        set adjustedBorder 4
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
            [my jget unSelectedAnimationArray] set $index [::RectangleAdjustedAnimation new $rectWidth $rectHeight $offset $offset $buttonColor]
        } else {
            [my jget unSelectedAnimationArray] set $index [::RectangleFilledAdjustedAnimation new $rectWidth $rectHeight $offset $offset $buttonColor]
        }
    }
    

    method updateAll {graphics items} {
        for {set index [$items length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [$items get $index] preMeasurement $graphics
            my updateAt $index [$items get $index]
        }
    }
    

    method updateAt {index item} {
        set basicColorFactory [::BasicColorFactory::getInstance]
        set buttonColor [$basicColorFactory jget TRANSPARENT_GREY]
        set selectedButtonColor [$basicColorFactory jget TRANSPARENT_RED]
        set width [$item getMinimumWidth]
        set height [$item getMinimumHeight]
        set adjustedBorder 3
        set offset [expr {-([expr {[my jget halfBorder] + $adjustedBorder}])}]
        set rectWidth [expr {[expr {$width + [my jget border]}] - $adjustedBorder}]
        set rectHeight [expr {[expr {$height + [my jget border]}] - $adjustedBorder}]
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
            set rectangleAdjustedAnimation [[my jget selectedAnimationArray] get $index]
            $rectangleAdjustedAnimation setWidth $rectWidth
            $rectangleAdjustedAnimation setHeight $rectHeight
            $rectangleAdjustedAnimation setOffsetX $offset
            $rectangleAdjustedAnimation setOffsetY $offset
            $rectangleAdjustedAnimation setBasicColorP $selectedButtonColor
        } else {
            set rectangleAdjustedAnimation [[my jget selectedAnimationArray] get $index]
            $rectangleAdjustedAnimation setWidth $rectWidth
            $rectangleAdjustedAnimation setHeight $rectHeight
            $rectangleAdjustedAnimation setOffsetX $offset
            $rectangleAdjustedAnimation setOffsetY $offset
            $rectangleAdjustedAnimation setBasicColorP $selectedButtonColor
        }
        set adjustedBorder 4
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
            set rectangleAdjustedAnimation [[my jget unSelectedAnimationArray] get $index]
            $rectangleAdjustedAnimation setWidth $rectWidth
            $rectangleAdjustedAnimation setHeight $rectHeight
            $rectangleAdjustedAnimation setOffsetX $offset
            $rectangleAdjustedAnimation setOffsetY $offset
            $rectangleAdjustedAnimation setBasicColorP $buttonColor
        } else {
            set rectangleAdjustedAnimation [[my jget unSelectedAnimationArray] get $index]
            $rectangleAdjustedAnimation setWidth $rectWidth
            $rectangleAdjustedAnimation setHeight $rectHeight
            $rectangleAdjustedAnimation setOffsetX $offset
            $rectangleAdjustedAnimation setOffsetY $offset
            $rectangleAdjustedAnimation setBasicColorP $buttonColor
        }
    }
    

    method getSelectedCommand {} {
        set index [next]
        set commandTextItem [my get $index]
        return [$commandTextItem getCommand]
    }
    

    method append {item} {
        set result [next $item]
        my addAt $result $item
        return $result
    }
    

    method delete {itemNum} {
        next $itemNum
    }
    

    method deleteAll {} {
        my initAnimations
        next
    }
    

    method insert {itemNum item} {
        next $itemNum $item
    }
    

    method set {itemNum item} {
        next $itemNum $item
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        next $graphics
    }
    

    method paintItem {graphics index item x y} {
        [[my jget selectedAnimationArray] get $index] paintXY $graphics $x $y
        return [next $graphics $index $item $x $y]
    }
    

    method paintUnselectedItem {graphics index item x y} {
        [[my jget unSelectedAnimationArray] get $index] paintXY $graphics $x $y
        return [next $graphics $index $item $x $y]
    }
}

namespace eval ::CommandCurrentSelectionForm {
}


