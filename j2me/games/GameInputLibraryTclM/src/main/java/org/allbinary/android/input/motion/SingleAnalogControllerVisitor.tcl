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

oo::class create ::SingleAnalogControllerVisitor {
    superclass ::AnalogControllerVisitor
}

oo::define ::SingleAnalogControllerVisitor {
    method initFields_SingleAnalogControllerVisitor {} {
        my jset playerInputId 0
        
        return
    }
    

    constructor {playerInputId} {
        next
        my initFields_SingleAnalogControllerVisitor
        my jset playerInputId $playerInputId
    }
    

    method process {allbinaryLayerManager analogLocationInputProcessor} {
        set analogLocationInput [[::AnalogLocationInputFactory::getInstance] getInstanceForPlayer [my jget playerInputId]]
        $analogLocationInputProcessor process $allbinaryLayerManager $analogLocationInput
    }
}

namespace eval ::SingleAnalogControllerVisitor {
}


