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
# package org.allbinary.graphics.displayable.screen

oo::class create ::ScreenRepaintProcessor {
    superclass ::Processor
}

oo::define ::ScreenRepaintProcessor {
    method initFields_ScreenRepaintProcessor {} {
        my jset displayable {}
        
        return
    }
    

    constructor {displayable} {
        next
        my initFields_ScreenRepaintProcessor
        my jset displayable $displayable
    }
    

    method process {} {
        ::ScreenRepaintUtil::repaint [my jget displayable]
    }
}

namespace eval ::ScreenRepaintProcessor {
}


