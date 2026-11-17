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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonsMappingPaintable {
    superclass ::Paintable
}

oo::define ::TouchButtonsMappingPaintable {
    method initFields_TouchButtonsMappingPaintable {} {
        my jset logUtil {}
        my jset foregroundColor 0
        my jset paintableTable {}
        my jset touchButtonLocationHelper {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset paintableTable [jarrayof 0 {jarray 0 {}}]
        my jset touchButtonLocationHelper [::TouchButtonLocationHelper new]
        return
    }
    

    constructor {basicColor} {
        next
        my initFields_TouchButtonsMappingPaintable
        my jset foregroundColor [$basicColor intValue]
        my init
    }
    

    method init {} {
        try {
            my jset paintableTable [my createPaintableTable]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "updateRectangle" $e
        }
    }
    

    method createPaintableTable {} {
        set totalColumns [[my jget touchButtonLocationHelper] getTotalColumns]
        set totalRows [[my jget touchButtonLocationHelper] getTotalRows]
        set paintableTable [jarrayof $totalColumns {jarray $totalRows {}}]
        set cellPositionFactory [::CellPositionFactory::getInstance]
        set commonButtons [::CommonButtons::getInstance]
        for {set index [jint [expr {$totalColumns - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            for {set rowIndex [jint [expr {$totalRows - 1}]]} {[expr {$rowIndex >= 0}]} {jpostincr rowIndex -1} {
                [[my jget paintableTable] get $index] set $rowIndex [::TouchButton::createButton [[::BasicTouchInputFactory::getInstance] jget NONE] [::TouchButtonBlankResource::getInstance] [$commonButtons jget NORMAL_BUTTON] [$cellPositionFactory getInstanceColRow $index $rowIndex] [[my jget touchButtonLocationHelper] getColumnsRemainderHalf] [[my jget touchButtonLocationHelper] getRowsRemainderHalf]]
            }
        }
        return $paintableTable
    }
    

    method paint {graphics} {
        set totalColumns [[my jget touchButtonLocationHelper] getTotalColumns]
        set totalRows [[my jget touchButtonLocationHelper] getTotalRows]
        for {set index [jint [expr {$totalColumns - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            for {set rowIndex [jint [expr {$totalRows - 1}]]} {[expr {$rowIndex >= 0}]} {jpostincr rowIndex -1} {
                [[[my jget paintableTable] get $index] get $rowIndex] paint $graphics
            }
        }
    }
}

namespace eval ::TouchButtonsMappingPaintable {
}


