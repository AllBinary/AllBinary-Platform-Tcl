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

oo::class create ::ScrollSelectionForm {
    superclass ::PaintableForm
}

oo::define ::ScrollSelectionForm {
    method initFields_ScrollSelectionForm {} {
        my jset rectangleCollisionUtil {}
        my jset border 0
        my jset halfBorder 0
        my jset buttonBasicColor {}
        my jset scrollSelectionFormFormTypeItemIndexPaintable {}
        my jset formTypeItemIndexDx {}
        my jset paintable {}
        my jset adjustedExtraBorder 0
        my jset rectangleCollisionUtil [::RectangleCollisionUtil::getInstance]
        
        
        
        my jset scrollSelectionFormFormTypeItemIndexPaintable [::ItemIndexPaintable::getInstance]
        my jset formTypeItemIndexDx [::ItemIndexDx::getInstance]
        my jset paintable [::ItemPaintableFactory::getInstance]
        
        return
    }
    
    
    
    

    constructor {title items formPaintableFactory border adjustedExtraBorder backgroundBasicColor foregroundBasicColor} {
        next $title $items $backgroundBasicColor $foregroundBasicColor
        my initFields_ScrollSelectionForm
        my jset adjustedExtraBorder $adjustedExtraBorder
        my jset buttonBasicColor $foregroundBasicColor
        my jset border $border
        my jset halfBorder ([expr {$border >> 1}])
        my jset paintable [$formPaintableFactory getInstanceItemPaintable [self]]
    }
    

    method init {rectangle formType} {
        next $rectangle $formType
        set formTypeFactory [::FormTypeFactory::getInstance]
        if {[expr {$formType eq [$formTypeFactory jget HORIZONTAL_FORM]}]} {
            my jset scrollSelectionFormFormTypeItemIndexPaintable [::ScrollSelectionFormHorizontalPaintable new [self]]
            my jset formTypeItemIndexDx [::ScrollSelectionFormHorizontalDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
            my jset scrollSelectionFormFormTypeItemIndexPaintable [::ScrollSelectionFormVerticalPaintable new [self]]
            my jset formTypeItemIndexDx [::ScrollSelectionFormVericalDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget TEMP_HORIZONTAL_FORM]}]} {
            my jset scrollSelectionFormFormTypeItemIndexPaintable [::ScrollSelectionFormTempHorizontalPaintable new [self]]
            my jset formTypeItemIndexDx [::ScrollSelectionFormTempHorizontalDx new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget NULL_FORM_TYPE]}]} {
        } else {
            error [jexception Exception [$formTypeFactory jget UNK]]
        }
    }
    

    method paintItemHorizontal {graphics index item x y} {
        set width [$item getMinimumWidth]
        return [jint [expr {[jint [expr {$x + $width}]] + [my jget border]}]]
    }
    

    method paintItemVertical {graphics index item x y} {
        set height [$item getMinimumHeight]
        return [jint [expr {[jint [expr {$y + $height}]] + [my jget border]}]]
    }
    

    method paintItemTempHorizontal {graphics index item x y} {
        return 0
    }
    

    method getSelectedIndexForPointHorizontalDx {index item dx dy} {
        return [jint [expr {$dx - [my jget halfBorder]}]]
    }
    

    method getSelectedIndexForPointVerticalDx {index item dx dy} {
        return [jint [expr {$dx + [my getDiffX $item]}]]
    }
    

    method getSelectedIndexForPointTempHorizontalDx {index item dx dy} {
        return [jint [expr {$dx + [my getDiffX $item]}]]
    }
    

    method append {item} {
        return [next $item]
    }
    

    method getSelectedItem {point} {
        set index [my getSelectedIndexForPoint $point]
        if {[expr {$index != [expr {-1}]}]} {
            return [my get $index]
        } else {
            return [::ABCustomItem::getNullInstance]
        }
    }
    

    method getItemIndex {item} {
        set nextItem {}
        set size [my size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextItem [my get $index]
            if {[expr {$nextItem eq $item}]} {
                return $index
            }
        }
        return [expr {-1}]
    }
    

    method getStartIndex {} {
        return 0
    }
    

    method getSelectedIndexForPoint {point} {
        set start [my getStartIndex]
        set size [my size]
        set dx [my getDx]
        set dy [my getDy]
        set formTypeFactory [::FormTypeFactory::getInstance]
        set commonLabels [::CommonLabels::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [$commonLabels jget START_LABEL]
        $stringBuffer appendint $start
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [$commonLabels jget TOTAL_LABEL]
        $stringBuffer appendint $size
        [my jget logUtil] putF [$stringBuffer toString] [self] [::ScrollSelectionForm::staticGet_GET_SELECTED_INDEX]
        set item {}
        set width 0
        set height 0
        set diffX 0
        for {set index $start} {[expr {$index < $size}]} {jpostincr index 1} {
            set item [my get $index]
            set width [$item getMinimumWidth]
            set height [$item getMinimumHeight]
            set diffX [[my jget formTypeItemIndexDx] getDx $index $item $dx $dy]
            if {[[my jget rectangleCollisionUtil] isInside $diffX [jint [expr {$dy - [my jget halfBorder]}]] [jint [expr {[jint [expr {$diffX + $width}]] + [my jget border]}]] [jint [expr {[jint [expr {[jint [expr {$dy + $height}]] + [my jget halfBorder]}]] + 1}]] [$point getX] [$point getY]]} {
                $stringBuffer delete 0 [$stringBuffer length]
                $stringBuffer append [$commonLabels jget ITEM_LABEL]
                $stringBuffer append [$item getLabel]
                $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
                $stringBuffer append [$commonLabels jget INDEX_LABEL]
                $stringBuffer appendint $index
                [my jget logUtil] putF [$stringBuffer toString] [self] [::ScrollSelectionForm::staticGet_GET_SELECTED_INDEX]
                return $index
            }
            if {[expr {[my jget formType] == [$formTypeFactory jget HORIZONTAL_FORM]}]} {
                set dx [jint [expr {[jint [expr {$dx + $width}]] + [my jget border]}]]
                if {[expr {$dx > [[my jget rectangle] getMaxX]}]} {
                    break
                }
            } elseif {[expr {[my jget formType] == [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
                set dy [jint [expr {[jint [expr {$dy + $height}]] + [my jget border]}]]
                if {[expr {$dy > [[my jget rectangle] getMaxY]}]} {
                    break
                }
            } elseif {[expr {[my jget formType] == [$formTypeFactory jget NULL_FORM_TYPE]}]} {
            } else {
                error [jexception Exception [$formTypeFactory jget UNK]]
            }
        }
        return [expr {-1}]
    }
    

    method processInputKey {gameKeyCode} {
        set formTypeFactory [::FormTypeFactory::getInstance]
        if {[expr {[my size] == 0}]} {
            return [expr {-1}]
        }
        set index [my getSelectedIndex]
        if {[expr {[expr {[my jget formType] == [$formTypeFactory jget HORIZONTAL_FORM]}] || [expr {[my jget formType] == [$formTypeFactory jget TEMP_HORIZONTAL_FORM]}]}]} {
            if {[expr {$gameKeyCode == [::Canvas::staticGet_RIGHT]}]} {
                jpostincr index 1
            } elseif {[expr {$gameKeyCode == [::Canvas::staticGet_LEFT]}]} {
                jpostincr index -1
            }
        } elseif {[expr {[my jget formType] == [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
            if {[expr {$gameKeyCode == [::Canvas::staticGet_DOWN]}]} {
                jpostincr index 1
            } elseif {[expr {$gameKeyCode == [::Canvas::staticGet_UP]}]} {
                jpostincr index -1
            }
        } elseif {[expr {[my jget formType] == [$formTypeFactory jget NULL_FORM_TYPE]}]} {
        } else {
            error [jexception Exception [$formTypeFactory jget UNK]]
        }
        set max [jint [expr {[my size] - 1}]]
        if {[expr {$index < 0}]} {
            my setSelectedIndex 0
        } elseif {[expr {$index > $max}]} {
            my setSelectedIndex $max
        } else {
            my setSelectedIndex $index
        }
        return [expr {-1}]
    }
    

    method isInForm {point} {
        if {[[my jget rectangleCollisionUtil] isInside [my jget x] [expr {[my jget y] - [my jget halfBorder]}] [expr {[[my jget rectangle] getMaxX] + [my jget border]}] [expr {[[my jget rectangle] getMaxY] + [my jget border]}] [$point getX] [$point getY]]} {
            [my jget logUtil] putF [[[[::StringMaker new] append [[::StringUtil::getInstance] toString1 $point]] append [::ScrollSelectionForm::staticGet_INSIDE_FORM]] toString] [self] [::ScrollSelectionForm::staticGet_IS_IN_FORM]
            return true
        }
        return false
    }
    

    method paintItem {graphics index item x y} {
        $item paintXY $graphics $x $y
        set width [$item getMinimumWidth]
        set height [$item getMinimumHeight]
        $graphics setColor [[my getButtonBasicColor] intValue]
        set adjustedBorder 3
        $graphics drawRect [jint [expr {[jint [expr {$x - [my jget halfBorder]}]] - $adjustedBorder}]] [jint [expr {[jint [expr {$y - [my jget halfBorder]}]] - $adjustedBorder}]] [jint [expr {[jint [expr {$width + [my jget border]}]] + [my jget adjustedExtraBorder]}]] [jint [expr {[jint [expr {$height + [my jget border]}]] + [my jget adjustedExtraBorder]}]]
        return [[my jget scrollSelectionFormFormTypeItemIndexPaintable] paint $graphics $index $item $x $y]
    }
    

    method paintUnselectedItem {graphics index item x y} {
        $graphics setColor [[my getButtonBasicColor] intValue]
        $item paintUnselected $graphics $x $y
        return [[my jget scrollSelectionFormFormTypeItemIndexPaintable] paint $graphics $index $item $x $y]
    }
    

    method getDiffX {item} {
        return 0
    }
    

    method getDx {} {
        return [my jget x]
    }
    

    method getDy {} {
        return [my jget y]
    }
    

    method setButtonBasicColor {buttonBasicColor} {
        my jset buttonBasicColor $buttonBasicColor
    }
    

    method getButtonBasicColor {} {
        return [my jget buttonBasicColor]
    }
}

namespace eval ::ScrollSelectionForm {
    variable NULL_SCROLL_SELECTION_FORMValue {}
    variable NULL_SCROLL_SELECTION_FORMSet 0
    proc staticGet_NULL_SCROLL_SELECTION_FORM {} {
        variable NULL_SCROLL_SELECTION_FORMValue
        variable NULL_SCROLL_SELECTION_FORMSet
        if {!$NULL_SCROLL_SELECTION_FORMSet} {
            set NULL_SCROLL_SELECTION_FORMSet 1
            set NULL_SCROLL_SELECTION_FORMValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_SCROLL_SELECTION_FORMValue
    }
    proc staticSet_NULL_SCROLL_SELECTION_FORM {value} {
        variable NULL_SCROLL_SELECTION_FORMValue
        variable NULL_SCROLL_SELECTION_FORMSet
        set NULL_SCROLL_SELECTION_FORMSet 1
        set NULL_SCROLL_SELECTION_FORMValue $value
    }
    variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue {}
    variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet 0
    proc staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM {} {
        variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue
        variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet
        if {!$NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet} {
            set NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet 1
            set NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue
    }
    proc staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM {value} {
        variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue
        variable NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet
        set NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet 1
        set NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue $value
    }
    variable INSIDE_FORMValue {}
    variable INSIDE_FORMSet 0
    proc staticGet_INSIDE_FORM {} {
        variable INSIDE_FORMValue
        variable INSIDE_FORMSet
        if {!$INSIDE_FORMSet} {
            set INSIDE_FORMSet 1
            set INSIDE_FORMValue " inside form"
        }
        return $INSIDE_FORMValue
    }
    proc staticSet_INSIDE_FORM {value} {
        variable INSIDE_FORMValue
        variable INSIDE_FORMSet
        set INSIDE_FORMSet 1
        set INSIDE_FORMValue $value
    }
    variable IS_IN_FORMValue {}
    variable IS_IN_FORMSet 0
    proc staticGet_IS_IN_FORM {} {
        variable IS_IN_FORMValue
        variable IS_IN_FORMSet
        if {!$IS_IN_FORMSet} {
            set IS_IN_FORMSet 1
            set IS_IN_FORMValue "isInForm"
        }
        return $IS_IN_FORMValue
    }
    proc staticSet_IS_IN_FORM {value} {
        variable IS_IN_FORMValue
        variable IS_IN_FORMSet
        set IS_IN_FORMSet 1
        set IS_IN_FORMValue $value
    }
    variable GET_SELECTED_INDEXValue {}
    variable GET_SELECTED_INDEXSet 0
    proc staticGet_GET_SELECTED_INDEX {} {
        variable GET_SELECTED_INDEXValue
        variable GET_SELECTED_INDEXSet
        if {!$GET_SELECTED_INDEXSet} {
            set GET_SELECTED_INDEXSet 1
            set GET_SELECTED_INDEXValue "getSelectedIndexForPoint"
        }
        return $GET_SELECTED_INDEXValue
    }
    proc staticSet_GET_SELECTED_INDEX {value} {
        variable GET_SELECTED_INDEXValue
        variable GET_SELECTED_INDEXSet
        set GET_SELECTED_INDEXSet 1
        set GET_SELECTED_INDEXValue $value
    }
    proc createForm {title items formPaintableFactory border backgroundBasicColor foregroundBasicColor} {
        try {
            if {[expr {$formPaintableFactory eq [::ItemPaintableFactory::getInstance]}]} {
                return [::ScrollSelectionForm new $title $items $formPaintableFactory $border [expr {-3}] $backgroundBasicColor $foregroundBasicColor]
            } else {
                set commonStrings [::CommonStrings::getInstance]
                set logUtil [::LogUtil::getInstance]
                $logUtil putF [$commonStrings jget EXCEPTION] $logUtil [$commonStrings jget EXCEPTION]
                return [::PaintableForm::getNullPaintableForm]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            set logUtil [::LogUtil::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] $logUtil [$commonStrings jget EXCEPTION] $e
            return [::PaintableForm::getNullPaintableForm]
        }
    }
    proc getNullScrollSelectionForm {} {
        if {[expr {[::ScrollSelectionForm::staticGet_NULL_SCROLL_SELECTION_FORM] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ScrollSelectionForm::staticSet_NULL_SCROLL_SELECTION_FORM [::ScrollSelectionForm::createForm [[::StringUtil::getInstance] jget EMPTY_STRING] [jarray 0 {}] [::ItemPaintableFactory::getInstance] 0 [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::ScrollSelectionForm::staticGet_NULL_SCROLL_SELECTION_FORM]
    }
    proc getNullScrollSelectionFormHorizontal {} {
        if {[expr {[::ScrollSelectionForm::staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ScrollSelectionForm::staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM [::ScrollSelectionForm::createForm [[::StringUtil::getInstance] jget EMPTY_STRING] [jarray 0 {}] [::ItemPaintableFactory::getInstance] 0 [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::ScrollSelectionForm::staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM]
    }
}


