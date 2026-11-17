# Generated Code Do Not Modify
# package org.apache.xmlrpc

oo::class create ::XmlRpcClient {
    superclass ::JObject
}

oo::define ::XmlRpcClient {
    method initFields_XmlRpcClient {} {
        my jset url {}
        
        return
    }
    

    constructor {url} {
        next
        my initFields_XmlRpcClient
        my jset url [::URL new $url]
    }
    

    method getURL {} {
        return [my jget url]
    }
    

    method setBasicAuthentication {user password} {
    }
    

    method execute {method params} {
        return [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    

    method executeWithCrypt {method params cryptInterface} {
        return [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
}

namespace eval ::XmlRpcClient {
}


