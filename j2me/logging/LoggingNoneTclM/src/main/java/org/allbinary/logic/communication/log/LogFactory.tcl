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

#ActualPlatform
oo::class create ::LogFactory {
    superclass ::JObject
}

oo::define ::LogFactory {
    method initFields_LogFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_LogFactory
    }
    
    
    
}

namespace eval ::LogFactory {
    variable LOGValue {}
    variable LOGSet 0
    proc staticGet_LOG {} {
        variable LOGValue
        variable LOGSet
        if {!$LOGSet} {
            set LOGSet 1
            set LOGValue [::Log new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::NullUtil::getInstance] jget NULL_OBJECT] [[::StringUtil::getInstance] jget EMPTY_STRING] [[::NullUtil::getInstance] jget NULL_OBJECT]]
        }
        return $LOGValue
    }
    proc staticSet_LOG {value} {
        variable LOGValue
        variable LOGSet
        set LOGSet 1
        set LOGValue $value
    }
    proc getInstanceD {} {
        set stringUtil [::StringUtil::getInstance]
        set nullUtil [::NullUtil::getInstance]
        return [::Log new [$stringUtil jget EMPTY_STRING] [$nullUtil jget NULL_OBJECT] [$stringUtil jget EMPTY_STRING] [$nullUtil jget NULL_OBJECT]]
    }
    proc getInstance {specialMessage anyType functionName exception} {
        return [::LogFactory::staticGet_LOG]
    }
    proc getInstanceF {specialMessage anyType functionName} {
        return [::LogFactory::staticGet_LOG]
    }
}


