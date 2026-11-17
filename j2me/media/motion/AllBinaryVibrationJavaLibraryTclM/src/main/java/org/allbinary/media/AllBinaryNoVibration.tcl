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
# package org.allbinary.media

oo::class create ::AllBinaryNoVibration {
    superclass ::AllBinaryVibrationME
}

oo::define ::AllBinaryNoVibration {
    method initFields_AllBinaryNoVibration {} {
        return
    }

    constructor {} {
        next
        my initFields_AllBinaryNoVibration
    }
    

    method vibrate {duration type volume} {
    }
}

namespace eval ::AllBinaryNoVibration {
    variable NO_VIBRATIONValue {}
    variable NO_VIBRATIONSet 0
    proc staticGet_NO_VIBRATION {} {
        variable NO_VIBRATIONValue
        variable NO_VIBRATIONSet
        if {!$NO_VIBRATIONSet} {
            set NO_VIBRATIONSet 1
            set NO_VIBRATIONValue [::AllBinaryNoVibration new]
        }
        return $NO_VIBRATIONValue
    }
    proc staticSet_NO_VIBRATION {value} {
        variable NO_VIBRATIONValue
        variable NO_VIBRATIONSet
        set NO_VIBRATIONSet 1
        set NO_VIBRATIONValue $value
    }
}


