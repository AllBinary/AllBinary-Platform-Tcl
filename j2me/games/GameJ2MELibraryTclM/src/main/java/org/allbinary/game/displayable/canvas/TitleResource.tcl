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

oo::class create ::TitleResource {
    superclass ::JObject
}

oo::define ::TitleResource {
    method initFields_TitleResource {} {
        return
    }

    constructor {} {
        next
        my initFields_TitleResource
    }
}

namespace eval ::TitleResource {
    variable RESOURCE_TITLEValue {}
    variable RESOURCE_TITLESet 0
    proc staticGet_RESOURCE_TITLE {} {
        variable RESOURCE_TITLEValue
        variable RESOURCE_TITLESet
        if {!$RESOURCE_TITLESet} {
            set RESOURCE_TITLESet 1
            set RESOURCE_TITLEValue "/title_sprite_100_by_100.png"
        }
        return $RESOURCE_TITLEValue
    }
    proc staticSet_RESOURCE_TITLE {value} {
        variable RESOURCE_TITLEValue
        variable RESOURCE_TITLESet
        set RESOURCE_TITLESet 1
        set RESOURCE_TITLEValue $value
    }
}


