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
# package org.allbinary.logic.system.security.licensing

# This is the information sent to the license server
oo::class create ::ClientInformation {
    superclass ::JObject
}

oo::define ::ClientInformation {
    method initFields_ClientInformation {} {
        my jset operatingSystemInterface {}
        my jset tsUtil {}
        my jset name {}
        my jset shortName {}
        my jset version {}
        my jset specialName {}
        my jset hardSale false
        my jset licenseId {}
        my jset licenseServers {}
        my jset operatingSystemInterface [::NoOperatingSystem::staticGet_NO_OPERATING_SYSTEM]
        my jset tsUtil [::TsUtil::getInstance]
        
        
        
        
        my jset hardSale true
        my jset licenseId [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset licenseServers [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        return
    }
    

    constructor {name version specialName shortName} {
        next
        my initFields_ClientInformation
        my jset name $name
        my jset version $version
        my jset specialName $specialName
        my jset shortName [[[[[::StringMaker new] append $shortName] append [[::CommonSeps::getInstance] jget UNDERSCORE]] append $version] toString]
        my init
    }
    

    method init {} {
    }
    

    method getOperatingSystemInterface {} {
        return [my jget operatingSystemInterface]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getSpecialName {} {
        return [my jget specialName]
    }
    

    method getVersion {} {
        return [my jget version]
    }
    

    method getLicenseId {} {
        return [my jget licenseId]
    }
    

    method getLicenseServers {} {
        return [my jget licenseServers]
    }
    

    method getLicenseServer {index} {
        return [[[my jget licenseServers] jget objectArray] get $index]
    }
    

    method getNumberOfLicenseServers {} {
        return [[my jget licenseServers] size]
    }
    

    method toHashtable {} {
        set abeClientInformationData [::AbeClientInformationData::getInstance]
        set genericOperatingSystem [my getOperatingSystemInterface]
        set clientInfoHashtable [[::StdUtil::getInstance] createHashtable]
        $clientInfoHashtable put [$abeClientInformationData jget NAME] [my jget name]
        $clientInfoHashtable put [$abeClientInformationData jget VERSION] [my jget version]
        $clientInfoHashtable put [$abeClientInformationData jget SPECIALNAME] [my jget specialName]
        $clientInfoHashtable put [$abeClientInformationData jget LICENSEID] [my getLicenseId]
        $clientInfoHashtable put [$abeClientInformationData jget OSNAME] [$genericOperatingSystem getName]
        $clientInfoHashtable put [$abeClientInformationData jget OSARCH] [$genericOperatingSystem getArch]
        $clientInfoHashtable put [$abeClientInformationData jget OSVERSION] [$genericOperatingSystem getVersion]
        $clientInfoHashtable put [$abeClientInformationData jget OS] [$genericOperatingSystem toString]
        set hardwareInterface [[::SystemHardwareFactory::getInstance] getInstance $genericOperatingSystem]
        set hardwareString [$hardwareInterface toString]
        $clientInfoHashtable put [$abeClientInformationData jget HARDWARE] $hardwareString
        return $clientInfoHashtable
    }
    

    method isSameId {alicenseId} {
        if {[expr {[[my jget tsUtil] compareTo [my getLicenseId] $alicenseId] == 0}]} {
            return true
        } else {
            return false
        }
    }
    

    method isLargerOrDifferentServerList {list} {
        set size [jint [expr {[$list size] - 1}]]
        set currentSize [jint [expr {[[my jget licenseServers] size] - 1}]]
        if {[expr {$size > $currentSize}]} {
            return true
        }
        for {set index $size} {[expr {$index >= 0}]} {jpostincr index -1} {
            set newServerName [[$list jget objectArray] get $index]
            for {set index2 $currentSize} {[expr {$index2 >= 0}]} {jpostincr index2 -1} {
                set nextOldServerName [[[my jget licenseServers] jget objectArray] get $index]
                if {[expr {[[my jget tsUtil] compareTo $newServerName $nextOldServerName] != 0}]} {
                    return true
                }
            }
        }
        return false
    }
    

    method setHardSale {hardSale} {
        my jset hardSale $hardSale
    }
    

    method isHardSale {} {
        return [my jget hardSale]
    }
    

    method setOperatingSystemInterface {operatingSystemInterface} {
        my jset operatingSystemInterface $operatingSystemInterface
    }
    

    method setLicenseId {licenseId} {
        my jset licenseId $licenseId
    }
    

    method setLicenseServers {licenseServers} {
        my jset licenseServers $licenseServers
    }
    

    method toShortString {} {
        return [my jget shortName]
    }
}

namespace eval ::ClientInformation {
}


