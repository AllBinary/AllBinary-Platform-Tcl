# Generated Code Do Not Modify
# package org.apache.xmlrpc

oo::class create ::XmlRpcException {
    superclass ::Exception
}

oo::define ::XmlRpcException {
    method initFields_XmlRpcException {} {
        return
    }
    

    constructor {code message} {
        next $message
        my initFields_XmlRpcException
    }
}

namespace eval ::XmlRpcException {
}


