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
# package org.allbinary.graphics.form

oo::class create ::TempHorizontalFormProcessor {
    superclass ::Processor
}

oo::define ::TempHorizontalFormProcessor {
    method initFields_TempHorizontalFormProcessor {} {
        my jset scrollCurrentSelectionForm {}
        
        return
    }
    

    constructor {scrollCurrentSelectionForm} {
        next
        my initFields_TempHorizontalFormProcessor
        my jset scrollCurrentSelectionForm $scrollCurrentSelectionForm
    }
    

    method process {} {
        [my jget scrollCurrentSelectionForm] processTempHorizontalForm
        [my jget scrollCurrentSelectionForm] jset processor [::Processor::getInstance]
    }
}

namespace eval ::TempHorizontalFormProcessor {
}


