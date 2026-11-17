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

oo::class create ::TouchButtonStrafeLeftResource {
    superclass ::TouchButtonResource
}

oo::define ::TouchButtonStrafeLeftResource {
    method initFields_TouchButtonStrafeLeftResource {} {
        return
    }
    
    

    constructor {} {
        next "/touch_button_strafe_left_arrow_64_by_64.png" "/touch_button_strafe_left_arrow_hint_64_by_64.png"
        my initFields_TouchButtonStrafeLeftResource
    }
}

namespace eval ::TouchButtonStrafeLeftResource {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TouchButtonStrafeLeftResource new]
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
        return [::TouchButtonStrafeLeftResource::staticGet_instance]
    }
}


