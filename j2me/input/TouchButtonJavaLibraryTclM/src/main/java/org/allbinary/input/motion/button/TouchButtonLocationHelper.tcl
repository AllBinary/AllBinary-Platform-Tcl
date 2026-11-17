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

oo::class create ::TouchButtonLocationHelper {
    superclass ::JObject
}

oo::define ::TouchButtonLocationHelper {
    method initFields_TouchButtonLocationHelper {} {
        my jset totalColumns 0
        my jset totalRows 0
        my jset columnsRemainder 0
        my jset rowsRemainder 0
        my jset columnsRemainderHalf 0
        my jset rowsRemainderHalf 0
        
        
        
        
        
        
        return
    }
    

    constructor {} {
        next
        my initFields_TouchButtonLocationHelper
        set buttonSize [[::CommonButtons::getInstance] jget STANDARD_BUTTON_SIZE]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        my jset totalColumns [expr {round([expr {[expr {double([$displayInfo getLastWidth])}] / [expr {double($buttonSize)}]}])}]
        my jset totalRows [expr {round([expr {[expr {double([$displayInfo getLastHeight])}] / [expr {double($buttonSize)}]}])}]
        my jset columnsRemainder [expr {[$displayInfo getLastWidth] % $buttonSize}]
        my jset columnsRemainderHalf ([expr {[my jget columnsRemainder] >> 1}])
        my jset rowsRemainder [expr {[$displayInfo getLastHeight] % $buttonSize}]
        my jset rowsRemainderHalf ([expr {[my jget rowsRemainder] >> 1}])
    }
    

    method getTotalColumns {} {
        return [my jget totalColumns]
    }
    

    method getTotalRows {} {
        return [my jget totalRows]
    }
    

    method getColumnsRemainder {} {
        return [my jget columnsRemainder]
    }
    

    method getRowsRemainder {} {
        return [my jget rowsRemainder]
    }
    

    method getColumnsRemainderHalf {} {
        return [my jget columnsRemainderHalf]
    }
    

    method getRowsRemainderHalf {} {
        return [my jget rowsRemainderHalf]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "totalColumns: "
        $stringBuffer appendint [my jget totalColumns]
        $stringBuffer append " totalRows: "
        $stringBuffer appendint [my jget totalRows]
        $stringBuffer append " columnsRemainder: "
        $stringBuffer appendint [my jget columnsRemainder]
        $stringBuffer append " rowsRemainder: "
        $stringBuffer appendint [my jget rowsRemainder]
        $stringBuffer append " columnsRemainderHalf: "
        $stringBuffer appendint [my jget columnsRemainderHalf]
        $stringBuffer append " rowsRemainderHalf: "
        $stringBuffer appendint [my jget rowsRemainderHalf]
        return [$stringBuffer toString]
    }
}

namespace eval ::TouchButtonLocationHelper {
}


