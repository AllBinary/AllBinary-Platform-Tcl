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
oo::class create ::AbeClientInformation {
    superclass ::ClientInformation
}

oo::define ::AbeClientInformation {
    method initFields_AbeClientInformation {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {name version specialName shortName} {
        next $name $version $specialName $shortName
        my initFields_AbeClientInformation
    }
    

    method init {} {
        try {
            my setOperatingSystemInterface [[::OperatingSystemFactory::getInstance] getOperatingSystemInstance]
            set licenseInitInfo [[::LicenseInitInfoUtil::getInstance] read]
            my setLicenseId [$licenseInitInfo getLicenseId]
            my setLicenseServers [$licenseInitInfo getServerList]
            set stringValidationUtil [::StringValidationUtil::getInstance]
            if {[$stringValidationUtil isEmpty [my getLicenseId]]} {
                set NONE "No License Id"
                my setLicenseId $NONE
            }
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::put [[[[::StringMaker new] append "Special Name: "] append [my getSpecialName]] toString] [self] [$commonStrings jget CONSTRUCTOR]
        } on error {e} {
            set logUtil [::LogUtil::getInstance]
            set commonStrings [::CommonStrings::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
}

namespace eval ::AbeClientInformation {
}


