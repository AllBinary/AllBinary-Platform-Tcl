# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.font

oo::class create ::UpdateMyFontProcessor {
    superclass ::MyFontProcessor
}

oo::define ::UpdateMyFontProcessor {
    method initFields_UpdateMyFontProcessor {} {
        my jset updateMeasurementProcessor {}
        
        return
    }
    

    constructor {keyValueDrawCharArray} {
        next
        my initFields_UpdateMyFontProcessor
        my jset updateMeasurementProcessor $keyValueDrawCharArray
    }
    

    method process {graphics} {
        [my jget updateMeasurementProcessor] updateMeasurement $graphics
    }
}

namespace eval ::UpdateMyFontProcessor {
}


