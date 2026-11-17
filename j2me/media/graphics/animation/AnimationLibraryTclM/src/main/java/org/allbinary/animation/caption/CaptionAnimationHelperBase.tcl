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
# package org.allbinary.animation.caption

oo::class create ::CaptionAnimationHelperBase {
    superclass ::Animation
}

oo::define ::CaptionAnimationHelperBase {
    method initFields_CaptionAnimationHelperBase {} {
        return
    }

    constructor {} {
        next
        my initFields_CaptionAnimationHelperBase
    }
    

    method isShowing {} {
        return false
    }
    

    method tick {} {
    }
    

    method update {message basicColor} {
    }
    

    method paintXY {graphics x y} {
    }
}

namespace eval ::CaptionAnimationHelperBase {
    variable INSTANCEValue {}
    variable INSTANCESet 0
    proc staticGet_INSTANCE {} {
        variable INSTANCEValue
        variable INSTANCESet
        if {!$INSTANCESet} {
            set INSTANCESet 1
            set INSTANCEValue [::CaptionAnimationHelperBase new]
        }
        return $INSTANCEValue
    }
    proc staticSet_INSTANCE {value} {
        variable INSTANCEValue
        variable INSTANCESet
        set INSTANCESet 1
        set INSTANCEValue $value
    }
}


