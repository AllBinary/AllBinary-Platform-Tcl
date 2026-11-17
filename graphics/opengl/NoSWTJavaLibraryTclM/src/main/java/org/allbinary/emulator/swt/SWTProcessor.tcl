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

oo::class create ::SWTProcessor {
    superclass ::JObject
}

oo::define ::SWTProcessor {
    method initFields_SWTProcessor {} {
        my jset runnable {}
        my jset runnable [::NullRunnable::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_SWTProcessor
    }
    
    

    method process {display} {
        $display sleep
    }
}

namespace eval ::SWTProcessor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SWTProcessor new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::SWTProcessor::staticGet_instance]
    }
}


