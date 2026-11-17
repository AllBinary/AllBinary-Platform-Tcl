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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonUpResource {
    superclass ::TouchButtonResource
}

oo::define ::TouchButtonUpResource {
    method initFields_TouchButtonUpResource {} {
        return
    }
    
    

    constructor {} {
        next "/touch_button_up_arrow_64_by_64.png" "/touch_button_up_arrow_hint_64_by_64.png"
        my initFields_TouchButtonUpResource
    }
}

namespace eval ::TouchButtonUpResource {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TouchButtonUpResource new]
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
        return [::TouchButtonUpResource::staticGet_instance]
    }
}


