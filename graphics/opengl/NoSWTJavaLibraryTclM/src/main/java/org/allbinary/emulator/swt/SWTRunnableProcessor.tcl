# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.emulator.swt

oo::class create ::SWTRunnableProcessor {
    superclass ::SWTProcessor
}

oo::define ::SWTRunnableProcessor {
    method initFields_SWTRunnableProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_SWTRunnableProcessor
    }
    
    

    method process {display} {
    }
}

namespace eval ::SWTRunnableProcessor {
    variable instanceRValue {}
    variable instanceRSet 0
    proc staticGet_instanceR {} {
        variable instanceRValue
        variable instanceRSet
        if {!$instanceRSet} {
            set instanceRSet 1
            set instanceRValue [::SWTRunnableProcessor new]
        }
        return $instanceRValue
    }
    proc staticSet_instanceR {value} {
        variable instanceRValue
        variable instanceRSet
        set instanceRSet 1
        set instanceRValue $value
    }
    proc getInstance {} {
        return [::SWTRunnableProcessor::staticGet_instanceR]
    }
}


