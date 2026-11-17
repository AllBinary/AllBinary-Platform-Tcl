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
    proc getInstanceD {} {
        set stringUtil [::StringUtil::getInstance]
        set nullUtil [::NullUtil::getInstance]
        return [::Log new [$stringUtil jget EMPTY_STRING] [$nullUtil jget NULL_OBJECT] [$stringUtil jget EMPTY_STRING] [$nullUtil jget NULL_OBJECT]]
    }
    proc getInstanceNoF {specialMessage anyType exception} {
        return [::Log new $specialMessage $anyType [[::StringUtil::getInstance] jget EMPTY_STRING] $exception]
    }
    proc getInstance {specialMessage anyType functionName exception} {
        return [::Log new $specialMessage $anyType $functionName $exception]
    }
    proc getInstanceF {specialMessage anyType functionName} {
        set nullUtil [::NullUtil::getInstance]
        return [::Log new $specialMessage $anyType $functionName [$nullUtil jget NULL_OBJECT]]
    }
}


