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
# package org.allbinary.android.input.motion

oo::class create ::AllAnalogControllerVisitor {
    superclass ::AnalogControllerVisitor
}

oo::define ::AllAnalogControllerVisitor {
    method initFields_AllAnalogControllerVisitor {} {
        return
    }

    constructor {} {
        next
        my initFields_AllAnalogControllerVisitor
    }
    

    method process {allbinaryLayerManager analogLocationInputProcessor} {
        set analogLocationInputList [[::AnalogLocationInputFactory::getInstance] getList]
        set analogLocationInput {}
        for {set index [jint [expr {[$analogLocationInputList size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set analogLocationInput [$analogLocationInputList get $index]
            $analogLocationInputProcessor process $allbinaryLayerManager $analogLocationInput
        }
    }
}

namespace eval ::AllAnalogControllerVisitor {
}


