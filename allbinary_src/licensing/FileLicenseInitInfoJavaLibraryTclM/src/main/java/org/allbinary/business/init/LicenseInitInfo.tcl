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
# package org.allbinary.business.init

oo::class create ::LicenseInitInfo {
    superclass ::JObject
}

oo::define ::LicenseInitInfo {
    method initFields_LicenseInitInfo {} {
        my jset id {}
        my jset serverVector {}
        my jset id [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset serverVector [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_LicenseInitInfo
    }
    

    method getLicenseId {} {
        return [my jget id]
    }
    

    method getServer {index} {
        return [[[my jget serverVector] jget objectArray] get $index]
    }
    

    method getNumberOfServers {} {
        return [[my jget serverVector] size]
    }
    

    method setLicenseId {value} {
        my jset id $value
    }
    

    method clearServers {} {
        my jset serverVector [::BasicArrayListD new]
    }
    

    method setServer {value index} {
        [my jget serverVector] addAt $index $value
    }
    

    method addServer {value} {
        [my jget serverVector] add $value
    }
    

    method getServerList {} {
        return [my jget serverVector]
    }
    

    method setServerList {servers} {
        if {[expr {[::DebugFactory::getInstance] == [::NoDebug::getInstance]}]} {
            my jset serverVector $servers
        }
    }
}

namespace eval ::LicenseInitInfo {
}


