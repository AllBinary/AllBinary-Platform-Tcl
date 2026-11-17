# Generated Code Do Not Modify
# package org.allbinary.graphics.form

oo::class create ::MultipleScrollSelectionHorizontalForm {
    superclass ::ScrollSelectionForm
}

oo::define ::MultipleScrollSelectionHorizontalForm {
    method initFields_MultipleScrollSelectionHorizontalForm {} {
        my jset rectPaintable {}
        my jset multipleScrollSelectionHorizontalFormTypeItemIndexPaintable {}
        my jset backgroundColor 0
        my jset myFontProcessor {}
        my jset logged false
        my jset fontHeight 0
        my jset rectPaintable [::NullPaintable::getInstance]
        my jset multipleScrollSelectionHorizontalFormTypeItemIndexPaintable [::ItemIndexPaintable::getInstance]
        my jset backgroundColor [[[::BasicColorFactory::getInstance] jget TRANSPARENT_GREY] intValue]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset logged false
        my jset fontHeight 0
        return
    }
    
    

    constructor {title items formPaintableFactory border backgroundBasicColor foregroundBasicColor} {
        next $title $items $formPaintableFactory $border 3 $backgroundBasicColor $foregroundBasicColor
        my initFields_MultipleScrollSelectionHorizontalForm
        if {[expr {[::J2MEUtil::isJ2ME] || [::J2MEUtil::isHTML]}]} {
        } else {
            my jset rectPaintable [::MultipleScrollSelectionFormRectPaintable new [self]]
        }
    }
    

    method fillRect {graphics} {
        $graphics setColor [my jget backgroundColor]
        $graphics fillRect [my jget x] [my jget y] [[my jget rectangle] getWidth] [[my jget rectangle] getHeight]
    }
    

    method init {rectangle formType} {
        next $rectangle $formType
        set formTypeFactory [::FormTypeFactory::getInstance]
        if {[expr {$formType eq [$formTypeFactory jget HORIZONTAL_FORM]}]} {
            my jset multipleScrollSelectionHorizontalFormTypeItemIndexPaintable [::MultipleScrollSelectionFormHorizontalPaintable new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget VERTICAL_CENTER_FORM]}]} {
            my jset multipleScrollSelectionHorizontalFormTypeItemIndexPaintable [::MultipleScrollSelectionFormVerticalPaintable new [self]]
        } elseif {[expr {$formType eq [$formTypeFactory jget NULL_FORM_TYPE]}]} {
        } else {
            error [jexception Exception [$formTypeFactory jget UNK]]
        }
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset fontHeight [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paintHorizontal {graphics index item dx dy} {
        set dx2 [expr {[my paintItem $graphics $index $item $dx $dy] + [my jget border]}]
        [my jget paintable] paint $graphics $index $dx $dy
        set dx $dx2
        return $dx
    }
    

    method paintVertical {graphics index item dx dy} {
        my paintItem $graphics $index $item $dx $dy
        [my jget paintable] paint $graphics $index $dx $dy
        return $dx
    }
    

    method getStartIndex {} {
        return [my getSelectedIndex]
    }
    

    method paint {graphics} {
        try {
            [my jget myFontProcessor] process $graphics
            set start [my getStartIndex]
            set size [my size]
            set dx [my jget x]
            set dy [my jget y]
            [my jget rectPaintable] paint $graphics
            $graphics drawString [my getTitle] [my jget x] [expr {[my jget y] - [my jget fontHeight]}] 0
            set item {}
            for {set index $start} {[expr {$index < $size}]} {jpostincr index 1} {
                set item [my get $index]
                if {[expr {$dx >= [[my jget rectangle] getMaxX]}]} {
                    if {[my jget logged]} {
                    } else {
                        my jset logged true
                        ::PreLogUtil::put [[[[::StringMaker new] append "painting beyond maxx: "] appendint [jint [[my jget rectangle] getMaxX]]] toString] [self] [[my jget canvasStrings] jget PAINT]
                    }
                }
                set dx [[my jget multipleScrollSelectionHorizontalFormTypeItemIndexPaintable] paint $graphics $index $item $dx $dy]
            }
        } on error {e} {
            ::PreLogUtil::put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget PAINT]
        }
    }
}

namespace eval ::MultipleScrollSelectionHorizontalForm {
    proc createForm {title items rectangle formType border backgroundBasicColor foregroundBasicColor} {
        set scrollSelectionForm [::MultipleScrollSelectionHorizontalForm new $title $items [::ItemPaintableFactory::getInstance] $border $backgroundBasicColor $foregroundBasicColor]
        $scrollSelectionForm init $rectangle $formType
        return $scrollSelectionForm
    }
}


