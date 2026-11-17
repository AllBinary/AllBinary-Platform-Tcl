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

oo::class create ::TouchButtonTurnRightResource {
    superclass ::TouchButtonResource
}

oo::define ::TouchButtonTurnRightResource {
    method initFields_TouchButtonTurnRightResource {} {
        return
    }
    
    

    constructor {} {
        next "/touch_button_turn_right_arrow_64_by_64.png" "/touch_button_turn_right_arrow_hint_64_by_64.png"
        my initFields_TouchButtonTurnRightResource
    }
}

namespace eval ::TouchButtonTurnRightResource {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TouchButtonTurnRightResource new]
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
        return [::TouchButtonTurnRightResource::staticGet_instance]
    }
}


