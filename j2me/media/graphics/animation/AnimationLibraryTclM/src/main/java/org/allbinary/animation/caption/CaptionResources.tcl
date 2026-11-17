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
# package org.allbinary.animation.caption

oo::class create ::CaptionResources {
    superclass ::JObject
}

oo::define ::CaptionResources {
    method initFields_CaptionResources {} {
        return
    }

    constructor {} {
        next
        my initFields_CaptionResources
    }
}

namespace eval ::CaptionResources {
    variable RESOURCEValue {}
    variable RESOURCESet 0
    proc staticGet_RESOURCE {} {
        variable RESOURCEValue
        variable RESOURCESet
        if {!$RESOURCESet} {
            set RESOURCESet 1
            set RESOURCEValue "/character_message_bubbled_box.png"
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


