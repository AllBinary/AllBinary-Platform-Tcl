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
# package org.allbinary.midlet

oo::class create ::MidletIcon {
    superclass ::JObject
}

oo::define ::MidletIcon {
    method initFields_MidletIcon {} {
        return
    }

    constructor {} {
        next
        my initFields_MidletIcon
    }
}

namespace eval ::MidletIcon {
    variable RESOURCEValue {}
    variable RESOURCESet 0
    proc staticGet_RESOURCE {} {
        variable RESOURCEValue
        variable RESOURCESet
        if {!$RESOURCESet} {
            set RESOURCESet 1
            set RESOURCEValue "icon"
        }
        return $RESOURCEValue
    }
    proc staticSet_RESOURCE {value} {
        variable RESOURCEValue
        variable RESOURCESet
        set RESOURCESet 1
        set RESOURCEValue $value
    }
}


