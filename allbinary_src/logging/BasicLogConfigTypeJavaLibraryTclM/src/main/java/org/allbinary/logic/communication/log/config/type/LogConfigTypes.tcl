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
# package org.allbinary.logic.communication.log.config.type

oo::class create ::LogConfigTypes {
    superclass ::JObject
}

oo::define ::LogConfigTypes {
    method initFields_LogConfigTypes {} {
        return
    }
    

    constructor {} {
        next
        my initFields_LogConfigTypes
    }
}

namespace eval ::LogConfigTypes {
    variable LOGGINGValue {}
    variable LOGGINGSet 0
    proc staticGet_LOGGING {} {
        variable LOGGINGValue
        variable LOGGINGSet
        if {!$LOGGINGSet} {
            set LOGGINGSet 1
            set LOGGINGValue [::BasicArrayListD new]
        }
        return $LOGGINGValue
    }
    proc staticSet_LOGGING {value} {
        variable LOGGINGValue
        variable LOGGINGSet
        set LOGGINGSet 1
        set LOGGINGValue $value
    }
}


