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
        my jset serverList {}
        my jset id [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset serverList [::BasicArrayListD new]
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
        return [[my jget serverList] get $index]
    }
    

    method getNumberOfServers {} {
        return [[my jget serverList] size]
    }
    

    method setLicenseId {value} {
        my jset id $value
    }
    

    method clearServers {} {
        [my jget serverList] clear
    }
    

    method setServer {value index} {
        [my jget serverList] addAt $index $value
    }
    

    method addServer {value} {
        [my jget serverList] add $value
    }
    

    method getServerList {} {
        return [my jget serverList]
    }
    

    method setServerList {servers} {
        if {[expr {[::DebugFactory::getInstance] == [::NoDebug::getInstance]}]} {
            my jset serverList $servers
        }
    }
}

namespace eval ::LicenseInitInfo {
}


