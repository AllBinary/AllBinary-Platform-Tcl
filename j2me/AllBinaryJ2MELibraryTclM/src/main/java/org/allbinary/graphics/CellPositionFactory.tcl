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
# package org.allbinary.graphics

oo::class create ::CellPositionFactory {
    superclass ::JObject
}

oo::define ::CellPositionFactory {
    method initFields_CellPositionFactory {} {
        my jset logUtil {}
        my jset NONE {}
        my jset cellPositionArray {}
        my jset columns 0
        my jset rows 0
        my jset logUtil [::LogUtil::getInstance]
        my jset NONE [::CellPosition new [expr {-1}] [expr {-1}] [expr {-1}] [expr {-1}]]
        my jset cellPositionArray [jarrayof 0 {jarray 0 {}}]
        my jset columns 0
        my jset rows 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_CellPositionFactory
    }
    

    method init {columns rows} {
        set commonStrings [::CommonStrings::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Init: columns: "
        $stringBuffer appendint $columns
        $stringBuffer append " rows: "
        $stringBuffer appendint $rows
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget INIT]
        my jset cellPositionArray [jarrayof $columns {jarray $rows {}}]
        my jset columns $columns
        my jset rows $rows
        for {set column 0} {[expr {$column < $columns}]} {jpostincr column 1} {
            for {set row 0} {[expr {$row < $rows}]} {jpostincr row 1} {
                my createInstance $column $row
            }
        }
    }
    

    method getInstanceColRow {i_column i_row} {
        try {
            return [[[my jget cellPositionArray] get $i_column] get $i_row]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [[[[[[[[[[::StringMaker new] append "columns: "] appendint [my getColumns]] append " rows: "] appendint [my getRows]] append " col: "] appendint $i_column] append " row: "] appendint $i_row] toString] [self] [$commonStrings jget GET_INSTANCE] $e
            return [my jget NONE]
        }
    }
    

    method createInstance {i_column i_row} {
        set cellPositionCanBeNull [[[my jget cellPositionArray] get $i_column] get $i_row]
        if {[expr {$cellPositionCanBeNull eq {}}]} {
            set cellPositionCanBeNull [::CellPosition new $i_column $i_row [my jget columns] [my jget rows]]
            [[my jget cellPositionArray] get $i_column] set $i_row $cellPositionCanBeNull
        }
        return $cellPositionCanBeNull
    }
    

    method getColumns {} {
        return [my jget columns]
    }
    

    method getRows {} {
        return [my jget rows]
    }
}

namespace eval ::CellPositionFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::CellPositionFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::CellPositionFactory::staticGet_SINGLETON]
    }
}


