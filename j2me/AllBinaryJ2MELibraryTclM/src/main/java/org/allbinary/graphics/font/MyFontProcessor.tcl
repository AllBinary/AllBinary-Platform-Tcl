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

oo::class create ::MyFontProcessor {
    superclass ::JObject
}

oo::define ::MyFontProcessor {
    method initFields_MyFontProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_MyFontProcessor
    }
    
    
    
    

    method process {graphics} {
    }
}

namespace eval ::MyFontProcessor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MyFontProcessor new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc defaultCharWidth {font} {
        return [$font charWidth [scan "C" %c]]
    }
    proc defaultStringWidth {font size} {
        return [expr {[::MyFontProcessor::defaultCharWidth $font] * $size}]
    }
    proc getInstance {} {
        return [::MyFontProcessor::staticGet_instance]
    }
}


