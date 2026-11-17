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
# package org.allbinary.logic.system.os

oo::class create ::OperatingSystemFactory {
    superclass ::JObject
}

oo::define ::OperatingSystemFactory {
    method initFields_OperatingSystemFactory {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset genericOperatingSystem {}
        my jset hasDetected false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset genericOperatingSystem [::NoOperatingSystem::staticGet_NO_OPERATING_SYSTEM]
        my jset hasDetected false
        return
    }
    
    

    constructor {} {
        next
        my initFields_OperatingSystemFactory
    }
    

    method getOperatingSystemInstance {} {
        try {
            set operatingSystems [::OperatingSystems::getInstance]
            set systemProperties [::SystemProperties::getInstance]
            set osName [$systemProperties getName]
            set osArch [$systemProperties getArch]
            set osVersion [$systemProperties getVersion]
            if {[expr {![my jget hasDetected]}]} {
                [my jget logUtil] putF [string cat "osName: " $osName] [self] [[my jget commonStrings] jget GET_INSTANCE]
                my jset hasDetected true
                if {[expr {[string first [$operatingSystems jget LINUX] $osName] >= 0}]} {
                    if {[[::LogConfigTypes::staticGet_LOGGING] contains [[::LogConfigTypeFactory::getInstance] jget FACTORYERROR]]} {
                        [my jget logUtil] putF "Found a Linux OS" [self] [[my jget commonStrings] jget GET_INSTANCE]
                    }
                    my jset genericOperatingSystem [[::LinuxOperatingSystemFactory::getInstance] getOperatingSystemInstance]
                } elseif {[expr {[string first [$operatingSystems jget WINDOWS] $osName] >= 0}]} {
                    if {[[::LogConfigTypes::staticGet_LOGGING] contains [[::LogConfigTypeFactory::getInstance] jget FACTORYERROR]]} {
                        [my jget logUtil] putF "Found a Windows OS" [self] [[my jget commonStrings] jget GET_INSTANCE]
                    }
                    my jset genericOperatingSystem [[::WindowsOperatingSystemFactory::getInstance] getOperatingSystemInstance]
                } elseif {[expr {[string first [$operatingSystems jget SOLARIS] $osName] >= 0}]} {
                    if {[[::LogConfigTypes::staticGet_LOGGING] contains [[::LogConfigTypeFactory::getInstance] jget FACTORYERROR]]} {
                        [my jget logUtil] putF "Found a Solaris OS" [self] [[my jget commonStrings] jget GET_INSTANCE]
                    }
                    my jset genericOperatingSystem [[::SolarisOperatingSystemFactory::getInstance] getOperatingSystemInstance]
                } else {
                    error [jexception Exception [[[[::StringMaker new] append "OS Not Supported: "] append $osName] toString]]
                }
                set log [::LogFactory::getInstanceF [[[[::StringMaker new] append "OperatingSystem Info: "] append [[::StringUtil::getInstance] toString1 [my jget genericOperatingSystem]]] toString] [self] [[my jget commonStrings] jget GET_INSTANCE]]
                puts [jstr [$log toString]]
                [my jget logUtil] putL $log
            }
            return [my jget genericOperatingSystem]
        } on error {e} {
            if {[[::LogConfigTypes::staticGet_LOGGING] contains [[::LogConfigTypeFactory::getInstance] jget FACTORYERROR]]} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget GET_INSTANCE] $e
            }
            return [::NoOperatingSystem::staticGet_NO_OPERATING_SYSTEM]
        }
    }
}

namespace eval ::OperatingSystemFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OperatingSystemFactory new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::OperatingSystemFactory::staticGet_instance]
    }
}


