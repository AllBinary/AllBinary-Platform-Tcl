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

oo::class create ::LicenseInitInfoUtil {
    superclass ::JObject
}

oo::define ::LicenseInitInfoUtil {
    method initFields_LicenseInitInfoUtil {} {
        my jset INITFILENAME {}
        my jset ABOUT {}
        my jset PRIVACY_POLICY {}
        my jset OFFICIAL_ALLBINARY_SERVICES_SERVER {}
        my jset INITFILENAME "licenseinitdata.dat"
        my jset ABOUT "about"
        my jset PRIVACY_POLICY "privacy_policy"
        my jset OFFICIAL_ALLBINARY_SERVICES_SERVER "https://services.allbinary.com/LicServ/serverssl.php"
        return
    }
    
    

    method setFilePath {filePath} {
    }
    

    constructor {} {
        next
        my initFields_LicenseInitInfoUtil
    }
    

    method write {initData} {
    }
    

    method read {} {
        return [my readAgain 0]
    }
    

    method readAgain {initializeCounter} {
        set licenseInitInfo [::LicenseInitInfo new]
        $licenseInitInfo clearServers
        $licenseInitInfo addServer [my jget OFFICIAL_ALLBINARY_SERVICES_SERVER]
        return $licenseInitInfo
    }
}

namespace eval ::LicenseInitInfoUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LicenseInitInfoUtil new]
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
        return [::LicenseInitInfoUtil::staticGet_instance]
    }
}


