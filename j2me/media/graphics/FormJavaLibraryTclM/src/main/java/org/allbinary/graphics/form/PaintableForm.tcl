# Generated Code Do Not Modify
# package org.allbinary.graphics.form

oo::class create ::PaintableForm {
    superclass ::ABCustomForm
}

oo::define ::PaintableForm {
    method initFields_PaintableForm {} {
        my jset canvasStrings {}
        my jset rectangle {}
        my jset x 0
        my jset y 0
        my jset formType {}
        my jset canvasStrings [::CanvasStrings::getInstance]
        my jset rectangle [::RectangleFactory::staticGet_SINGLETON]
        my jset x 0
        my jset y 0
        my jset formType [[::FormTypeFactory::getInstance] jget NULL_FORM_TYPE]
        return
    }
    
    

    constructor {title items backgroundBasicColor foregroundBasicColor} {
        next $title $items $backgroundBasicColor $foregroundBasicColor
        my initFields_PaintableForm
        my setSelectedIndex 0
    }
    

    method init {rectangle formType} {
        my jset rectangle $rectangle
        set point [[my jget rectangle] getPoint]
        my jset x [$point getX]
        my jset y [$point getY]
        my jset formType $formType
    }
    

    method getWidth {} {
        return [[my jget rectangle] getWidth]
    }
}

namespace eval ::PaintableForm {
    variable NULL_PAINTABLE_FORMValue {}
    variable NULL_PAINTABLE_FORMSet 0
    proc staticGet_NULL_PAINTABLE_FORM {} {
        variable NULL_PAINTABLE_FORMValue
        variable NULL_PAINTABLE_FORMSet
        if {!$NULL_PAINTABLE_FORMSet} {
            set NULL_PAINTABLE_FORMSet 1
            set NULL_PAINTABLE_FORMValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_PAINTABLE_FORMValue
    }
    proc staticSet_NULL_PAINTABLE_FORM {value} {
        variable NULL_PAINTABLE_FORMValue
        variable NULL_PAINTABLE_FORMSet
        set NULL_PAINTABLE_FORMSet 1
        set NULL_PAINTABLE_FORMValue $value
    }
    proc getNullPaintableForm {} {
        if {[expr {[::PaintableForm::staticGet_NULL_PAINTABLE_FORM] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::PaintableForm::staticSet_NULL_PAINTABLE_FORM [::PaintableForm new [[::StringUtil::getInstance] jget EMPTY_STRING] [jarray 0 {}] [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::PaintableForm::staticGet_NULL_PAINTABLE_FORM]
    }
}


