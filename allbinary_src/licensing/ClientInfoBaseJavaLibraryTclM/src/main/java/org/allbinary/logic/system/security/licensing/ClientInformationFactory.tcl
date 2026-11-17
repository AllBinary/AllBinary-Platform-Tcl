# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system.security.licensing

oo::class create ::ClientInformationFactory {
    superclass ::JObject
}

oo::define ::ClientInformationFactory {
    method initFields_ClientInformationFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ClientInformationFactory
    }
    

    method getInstance {} {
        set logUtil [::LogUtil::getInstance]
        set commonStrings [::CommonStrings::getInstance]
        $logUtil putF [$commonStrings jget NOT_IMPLEMENTED] [self] [$commonStrings jget GET_INSTANCE]
        set stringUtil [::StringUtil::getInstance]
        return [::ClientInformation new [$stringUtil jget NULL_STRING] [$stringUtil jget NULL_STRING] [$stringUtil jget NULL_STRING] [$stringUtil jget NULL_STRING]]
    }
}

namespace eval ::ClientInformationFactory {
}


