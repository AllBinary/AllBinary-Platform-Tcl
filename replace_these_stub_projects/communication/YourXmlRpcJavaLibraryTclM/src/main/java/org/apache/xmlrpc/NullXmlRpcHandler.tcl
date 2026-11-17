# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.apache.xmlrpc

oo::class create ::NullXmlRpcHandler {
    superclass ::JObject
}

oo::define ::NullXmlRpcHandler {
    method initFields_NullXmlRpcHandler {} {
        return
    }

    constructor {} {
        next
        my initFields_NullXmlRpcHandler
    }
    

    method execute {method params} {
        return [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
}

namespace eval ::NullXmlRpcHandler {
    variable NULL_XML_RPC_HANDLERValue {}
    variable NULL_XML_RPC_HANDLERSet 0
    proc staticGet_NULL_XML_RPC_HANDLER {} {
        variable NULL_XML_RPC_HANDLERValue
        variable NULL_XML_RPC_HANDLERSet
        if {!$NULL_XML_RPC_HANDLERSet} {
            set NULL_XML_RPC_HANDLERSet 1
            set NULL_XML_RPC_HANDLERValue [::NullXmlRpcHandler new]
        }
        return $NULL_XML_RPC_HANDLERValue
    }
    proc staticSet_NULL_XML_RPC_HANDLER {value} {
        variable NULL_XML_RPC_HANDLERValue
        variable NULL_XML_RPC_HANDLERSet
        set NULL_XML_RPC_HANDLERSet 1
        set NULL_XML_RPC_HANDLERValue $value
    }
}


