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
# package org.allbinary.game.displayable.canvas

oo::class create ::FormUtil {
    superclass ::JObject
}

oo::define ::FormUtil {
    method initFields_FormUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_FormUtil
    }
    
    

    method createFormRectangle {} {
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set pointFactory [::PointFactory::getInstance]
        set rectangle [::Rectangle new [$pointFactory createXY 30 10] [expr {[$displayInfo getLastWidth] - 30}] [expr {[$displayInfo getLastHeight] - 35}]]
        return $rectangle
    }
}

namespace eval ::FormUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FormUtil new]
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
        return [::FormUtil::staticGet_instance]
    }
}


