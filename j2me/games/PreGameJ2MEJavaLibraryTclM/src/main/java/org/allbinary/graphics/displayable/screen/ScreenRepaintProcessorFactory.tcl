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

oo::class create ::ScreenRepaintProcessorFactory {
    superclass ::JObject
}

oo::define ::ScreenRepaintProcessorFactory {
    method initFields_ScreenRepaintProcessorFactory {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ScreenRepaintProcessorFactory
    }
    

    method create {displayable} {
        if {[expr {![::J2MEUtil::isJ2ME]}]} {
            return [::ScreenRepaintProcessor new $displayable]
        } else {
            return [::Processor::getInstance]
        }
    }
}

namespace eval ::ScreenRepaintProcessorFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ScreenRepaintProcessorFactory new]
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
        return [::ScreenRepaintProcessorFactory::staticGet_instance]
    }
}


