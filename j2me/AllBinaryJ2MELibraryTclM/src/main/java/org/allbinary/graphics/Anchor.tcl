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
# package org.allbinary.graphics

oo::class create ::Anchor {
    superclass ::JObject
}

oo::define ::Anchor {
    method initFields_Anchor {} {
        return
    }

    constructor {} {
        next
        my initFields_Anchor
    }
}

namespace eval ::Anchor {
    variable TOP_LEFTValue {}
    variable TOP_LEFTSet 0
    proc staticGet_TOP_LEFT {} {
        variable TOP_LEFTValue
        variable TOP_LEFTSet
        if {!$TOP_LEFTSet} {
            set TOP_LEFTSet 1
            set TOP_LEFTValue [expr {[::Graphics::staticGet_TOP] & [::Graphics::staticGet_LEFT]}]
        }
        return $TOP_LEFTValue
    }
    proc staticSet_TOP_LEFT {value} {
        variable TOP_LEFTValue
        variable TOP_LEFTSet
        set TOP_LEFTSet 1
        set TOP_LEFTValue $value
    }
}


