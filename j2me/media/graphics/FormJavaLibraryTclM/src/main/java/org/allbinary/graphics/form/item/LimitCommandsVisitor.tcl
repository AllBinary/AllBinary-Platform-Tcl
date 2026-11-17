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
# package org.allbinary.graphics.form.item

oo::class create ::LimitCommandsVisitor {
    superclass ::Visitor
}

oo::define ::LimitCommandsVisitor {
    method initFields_LimitCommandsVisitor {} {
        my jset isNotSmallDisplay false
        
        return
    }
    

    constructor {} {
        next
        my initFields_LimitCommandsVisitor
        set displayInfo [::DisplayInfoSingleton::getInstance]
        my jset isNotSmallDisplay [expr {([expr {[$displayInfo isPortrait] && [expr {[$displayInfo getLastHeight] > [[::ScreenInfo::getInstance] jget SMALL_WIDTH]}]}]) || ([expr {[expr {![$displayInfo isPortrait]}] && [expr {[$displayInfo getLastHeight] > [[::ScreenInfo::getInstance] jget SMALL_HEIGHT]}]}])}]
    }
    

    method visit {anyType} {
        set command $anyType
        set booleanFactory [::BooleanFactory::getInstance]
        if {[expr {[expr {[expr {[my jget isNotSmallDisplay] || [expr {[$command getPriority] == 1}]}] || [expr {$command eq [[::GameCommandsFactory::getInstance] jget EXIT_COMMAND]}]}] || [expr {$command eq [[::GameCommandsFactory::getInstance] jget EXIT_WITHOUT_PROGRESS_COMMAND]}]}]} {
            return [$booleanFactory jget TRUE]
        } else {
            return [$booleanFactory jget FALSE]
        }
    }
}

namespace eval ::LimitCommandsVisitor {
}


