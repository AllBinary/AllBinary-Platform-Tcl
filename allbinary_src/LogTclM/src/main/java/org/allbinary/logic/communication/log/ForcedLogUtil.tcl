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

oo::class create ::ForcedLogUtil {
    superclass ::JObject
}

oo::define ::ForcedLogUtil {
    method initFields_ForcedLogUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_ForcedLogUtil
    }
    
}

namespace eval ::ForcedLogUtil {
    proc log {message anyType} {
        try {
            error [jexception Exception $message]
        } on error {e} {
            ::PreLogUtil::putOE [[::CommonStrings::getInstance] jget EXCEPTION] $anyType "log" $e
        }
    }
}


