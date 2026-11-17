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

oo::class create ::BasicTouchButtonCellPositionFactory {
    superclass ::JObject
}

oo::define ::BasicTouchButtonCellPositionFactory {
    method initFields_BasicTouchButtonCellPositionFactory {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset TOP_RIGHT {}
        my jset TOP_LEFT {}
        my jset SECOND_FROM_TOP_LEFT {}
        my jset SECOND_FROM_TOP_RIGHT {}
        my jset TOP_SECOND_FROM_LEFT {}
        my jset TOP_SECOND_FROM_RIGHT {}
        my jset BOTTOM_RIGHT {}
        my jset BOTTOM_SECOND_FROM_RIGHT {}
        my jset SECOND_FROM_BOTTOM_RIGHT {}
        my jset THIRD_FROM_BOTTOM_RIGHT {}
        my jset FOURTH_FROM_BOTTOM_RIGHT {}
        my jset SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT {}
        my jset SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT {}
        my jset SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT {}
        my jset BOTTOM_THIRD_FROM_RIGHT {}
        my jset BOTTOM_FOURTH_FROM_RIGHT {}
        my jset BOTTOM_SECOND_FROM_LEFT {}
        my jset SECOND_FROM_BOTTOM_LEFT {}
        my jset THIRD_FROM_BOTTOM_LEFT {}
        my jset BOTTOM_LEFT {}
        my jset SECOND_FROM_BOTTOM_SECOND_FROM_LEFT {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        my jset SECOND_FROM_TOP_LEFT {}
        my jset SECOND_FROM_TOP_RIGHT {}
        my jset TOP_SECOND_FROM_LEFT {}
        my jset TOP_SECOND_FROM_RIGHT {}
        
        
        
        my jset THIRD_FROM_BOTTOM_RIGHT {}
        my jset FOURTH_FROM_BOTTOM_RIGHT {}
        
        my jset SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT {}
        my jset SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT {}
        my jset BOTTOM_THIRD_FROM_RIGHT {}
        my jset BOTTOM_FOURTH_FROM_RIGHT {}
        
        
        my jset THIRD_FROM_BOTTOM_LEFT {}
        
        
        return
    }
    

    constructor {} {
        next
        my initFields_BasicTouchButtonCellPositionFactory
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        set touchButtonLocationHelper [::TouchButtonLocationHelper new]
        set cellPositionFactory [::CellPositionFactory::getInstance]
        $cellPositionFactory init [$touchButtonLocationHelper getTotalColumns] [$touchButtonLocationHelper getTotalRows]
        my jset TOP_LEFT [$cellPositionFactory getInstanceColRow 0 0]
        my jset TOP_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] 0]
        my jset BOTTOM_LEFT [$cellPositionFactory getInstanceColRow 0 [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
        my jset BOTTOM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
        my jset BOTTOM_SECOND_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 2}] [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
        my jset SECOND_FROM_BOTTOM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
        my jset SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 2}] [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
        my jset BOTTOM_SECOND_FROM_LEFT [$cellPositionFactory getInstanceColRow 1 [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
        my jset SECOND_FROM_BOTTOM_LEFT [$cellPositionFactory getInstanceColRow 0 [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
        my jset SECOND_FROM_BOTTOM_SECOND_FROM_LEFT [$cellPositionFactory getInstanceColRow 1 [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
        if {[expr {[$touchButtonLocationHelper getTotalRows] > 2}]} {
            my jset SECOND_FROM_TOP_LEFT [$cellPositionFactory getInstanceColRow 0 1]
            my jset SECOND_FROM_TOP_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] 1]
        } else {
            my jset SECOND_FROM_TOP_LEFT [$cellPositionFactory jget NONE]
            my jset SECOND_FROM_TOP_RIGHT [$cellPositionFactory jget NONE]
        }
        if {[expr {[$touchButtonLocationHelper getTotalRows] >= 4}]} {
            my jset THIRD_FROM_BOTTOM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] [expr {[$touchButtonLocationHelper getTotalRows] - 3}]]
            my jset FOURTH_FROM_BOTTOM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 1}] [expr {[$touchButtonLocationHelper getTotalRows] - 4}]]
            my jset THIRD_FROM_BOTTOM_LEFT [$cellPositionFactory getInstanceColRow 0 [expr {[$touchButtonLocationHelper getTotalRows] - 3}]]
        } else {
            my jset THIRD_FROM_BOTTOM_RIGHT [$cellPositionFactory jget NONE]
            my jset FOURTH_FROM_BOTTOM_RIGHT [$cellPositionFactory jget NONE]
            my jset THIRD_FROM_BOTTOM_LEFT [$cellPositionFactory jget NONE]
        }
        if {[expr {[$touchButtonLocationHelper getTotalColumns] >= 4}]} {
            my jset SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 3}] [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
            my jset SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 4}] [expr {[$touchButtonLocationHelper getTotalRows] - 2}]]
            my jset BOTTOM_THIRD_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 3}] [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
            my jset BOTTOM_FOURTH_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 4}] [expr {[$touchButtonLocationHelper getTotalRows] - 1}]]
            my jset TOP_SECOND_FROM_LEFT [$cellPositionFactory getInstanceColRow 1 0]
            my jset TOP_SECOND_FROM_RIGHT [$cellPositionFactory getInstanceColRow [expr {[$touchButtonLocationHelper getTotalColumns] - 2}] 0]
        } else {
            my jset SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT [$cellPositionFactory jget NONE]
            my jset SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT [$cellPositionFactory jget NONE]
            my jset BOTTOM_THIRD_FROM_RIGHT [$cellPositionFactory jget NONE]
            my jset BOTTOM_FOURTH_FROM_RIGHT [$cellPositionFactory jget NONE]
            my jset TOP_SECOND_FROM_LEFT [$cellPositionFactory jget NONE]
            my jset TOP_SECOND_FROM_RIGHT [$cellPositionFactory jget NONE]
        }
    }
}

namespace eval ::BasicTouchButtonCellPositionFactory {
}


