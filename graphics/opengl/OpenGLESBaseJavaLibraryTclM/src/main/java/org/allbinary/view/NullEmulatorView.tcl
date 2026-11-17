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
# package org.allbinary.view

oo::class create ::NullEmulatorView {
    superclass ::JObject
}

oo::define ::NullEmulatorView {
    method initFields_NullEmulatorView {} {
        return
    }

    constructor {} {
        next
        my initFields_NullEmulatorView
    }
    

    method setMidlet {midlet} {
    }
    

    method onEmulatorInitComplete {midletActivity} {
    }
    

    method onSetDisplayable {displayable} {
    }
}

namespace eval ::NullEmulatorView {
    variable NULL_EMULATOR_VIEWValue {}
    variable NULL_EMULATOR_VIEWSet 0
    proc staticGet_NULL_EMULATOR_VIEW {} {
        variable NULL_EMULATOR_VIEWValue
        variable NULL_EMULATOR_VIEWSet
        if {!$NULL_EMULATOR_VIEWSet} {
            set NULL_EMULATOR_VIEWSet 1
            set NULL_EMULATOR_VIEWValue [::NullEmulatorView new]
        }
        return $NULL_EMULATOR_VIEWValue
    }
    proc staticSet_NULL_EMULATOR_VIEW {value} {
        variable NULL_EMULATOR_VIEWValue
        variable NULL_EMULATOR_VIEWSet
        set NULL_EMULATOR_VIEWSet 1
        set NULL_EMULATOR_VIEWValue $value
    }
}


