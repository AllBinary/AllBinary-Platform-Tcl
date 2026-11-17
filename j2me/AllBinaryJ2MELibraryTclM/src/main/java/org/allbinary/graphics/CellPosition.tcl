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

oo::class create ::CellPosition {
    superclass ::V
}

oo::define ::CellPosition {
    method initFields_CellPosition {} {
        my jset id 0
        my jset column 0
        my jset row 0
        
        
        
        return
    }
    

    constructor {column row columns rows} {
        next
        my initFields_CellPosition
        my jset column $column
        my jset row $row
        my jset id [jint [expr {([jint [expr {$row * $columns}]]) + $column}]]
    }
    

    method getColumn {} {
        return [my jget column]
    }
    

    method getRow {} {
        return [my jget row]
    }
    

    method toString {} {
        return [::CellPosition::toStringColRow [my getColumn] [my getRow]]
    }
    
    
    

    method getId {} {
        return [my jget id]
    }
}

namespace eval ::CellPosition {
    proc toStringCellPosition {basicGeographicMapCellPosition} {
        return [::CellPosition::toStringColRow [$basicGeographicMapCellPosition getColumn] [$basicGeographicMapCellPosition getRow]]
    }
    proc toStringColRow {i_column i_row} {
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        $stringBuffer append [$commonSeps jget PARENTHESIS_OPEN]
        $stringBuffer appendint $i_column
        $stringBuffer append [$commonSeps jget COMMA]
        $stringBuffer appendint $i_row
        $stringBuffer append [$commonSeps jget PARENTHESIS_CLOSE]
        return [$stringBuffer toString]
    }
}


