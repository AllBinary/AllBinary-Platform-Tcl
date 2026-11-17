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
# package org.allbinary.logic.communication.log

#NoPlatform
oo::class create ::PreLogUtil {
    superclass ::JObject
}

oo::define ::PreLogUtil {
    method initFields_PreLogUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_PreLogUtil
    }
    
    
    
}

namespace eval ::PreLogUtil {
    proc put {specialMessage anyType functionName} {
        ::PreLogUtil::putOE $specialMessage $anyType $functionName [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    proc putOE {specialMessage anyType functionName exception} {
        error [jexception RuntimeException {}]
    }
    proc putSE {specialMessage className functionName exception} {
        error [jexception RuntimeException {}]
    }
}


