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
# package org.allbinary.graphics.canvas.transition.progress

oo::class create ::ProgressCanvasFactory {
    superclass ::JObject
}

oo::define ::ProgressCanvasFactory {
    method initFields_ProgressCanvasFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ProgressCanvasFactory
    }
    
    
}

namespace eval ::ProgressCanvasFactory {
    variable PROGRESS_FORM_SCREENValue {}
    variable PROGRESS_FORM_SCREENSet 0
    proc staticGet_PROGRESS_FORM_SCREEN {} {
        variable PROGRESS_FORM_SCREENValue
        variable PROGRESS_FORM_SCREENSet
        if {!$PROGRESS_FORM_SCREENSet} {
            set PROGRESS_FORM_SCREENSet 1
            set PROGRESS_FORM_SCREENValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $PROGRESS_FORM_SCREENValue
    }
    proc staticSet_PROGRESS_FORM_SCREEN {value} {
        variable PROGRESS_FORM_SCREENValue
        variable PROGRESS_FORM_SCREENSet
        set PROGRESS_FORM_SCREENSet 1
        set PROGRESS_FORM_SCREENValue $value
    }
    proc getInstance {} {
        if {[expr {[::ProgressCanvasFactory::staticGet_PROGRESS_FORM_SCREEN] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ProgressCanvasFactory::staticSet_PROGRESS_FORM_SCREEN [::ProgressCanvas new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::ProgressCanvasFactory::staticGet_PROGRESS_FORM_SCREEN]
    }
    proc getLazyInstance {} {
        return [::NullPaintable::getInstance]
    }
}


