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

oo::class create ::TouchButtonsBuilderFactory {
    superclass ::JObject
}

oo::define ::TouchButtonsBuilderFactory {
    method initFields_TouchButtonsBuilderFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_TouchButtonsBuilderFactory
    }
    

    method getInstance {} {
        return [::NoButtonsTouchInputFactory::getInstance]
    }
}

namespace eval ::TouchButtonsBuilderFactory {
    variable NO_TOUCH_BUTTON_BUILDER_FACTORYValue {}
    variable NO_TOUCH_BUTTON_BUILDER_FACTORYSet 0
    proc staticGet_NO_TOUCH_BUTTON_BUILDER_FACTORY {} {
        variable NO_TOUCH_BUTTON_BUILDER_FACTORYValue
        variable NO_TOUCH_BUTTON_BUILDER_FACTORYSet
        if {!$NO_TOUCH_BUTTON_BUILDER_FACTORYSet} {
            set NO_TOUCH_BUTTON_BUILDER_FACTORYSet 1
            set NO_TOUCH_BUTTON_BUILDER_FACTORYValue [::TouchButtonsBuilderFactory new]
        }
        return $NO_TOUCH_BUTTON_BUILDER_FACTORYValue
    }
    proc staticSet_NO_TOUCH_BUTTON_BUILDER_FACTORY {value} {
        variable NO_TOUCH_BUTTON_BUILDER_FACTORYValue
        variable NO_TOUCH_BUTTON_BUILDER_FACTORYSet
        set NO_TOUCH_BUTTON_BUILDER_FACTORYSet 1
        set NO_TOUCH_BUTTON_BUILDER_FACTORYValue $value
    }
}


