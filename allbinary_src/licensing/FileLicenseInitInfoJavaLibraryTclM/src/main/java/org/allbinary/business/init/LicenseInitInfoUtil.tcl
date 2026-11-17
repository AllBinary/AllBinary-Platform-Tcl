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
        my jset logUtil {}
        my jset stringUtil {}
        my jset INITFILENAME {}
        my jset ABOUT {}
        my jset PRIVACY_POLICY {}
        my jset filePath {}
        my jset logUtil [::LogUtil::getInstance]
        my jset stringUtil [::StringUtil::getInstance]
        my jset INITFILENAME "licenseinitdata.dat"
        my jset ABOUT "about"
        my jset PRIVACY_POLICY "privacy_policy"
        my jset filePath [[my jget stringUtil] jget EMPTY_STRING]
        return
    }

    constructor {} {
        next
        my initFields_LicenseInitInfoUtil
    }
    
    

    method setFilePath {filePath} {
        my jset filePath $filePath
    }
    

    method write {initData} {
        if {[expr {[my jget filePath] eq [[my jget stringUtil] jget EMPTY_STRING]}]} {
            my jset filePath [expr {[::URLGLOBALS::getMainPath] + [[::PATH_GLOBALS::getInstance] jget INIT_PATH]}]
        }
        try {
            set tsUtil [::TsUtil::getInstance]
            set dataOutputStream [[::DataOutputStreamFactory::getInstance] getInstance [my jget filePath] [my jget INITFILENAME]]
            set licenseIdCrypted [$tsUtil getByteArray [[::WeakCrypt new 1] encrypt [$initData getLicenseId]]]
            $dataOutputStream writeUTF [::DatabaseEncoder::encode $licenseIdCrypted]
            set numberOfLicenseServers [$initData getNumberOfServers]
            $dataOutputStream writeInt $numberOfLicenseServers
            set licenseServerCrypted {}
            for {set index 0} {[expr {$index < $numberOfLicenseServers}]} {jpostincr index 1} {
                set licenseServerCrypted [$tsUtil getByteArray [[::WeakCrypt new 3] encrypt [$initData getServer $index]]]
                $dataOutputStream writeUTF [::DatabaseEncoder::encode $licenseServerCrypted]
            }
        } on error {e} {
            [my jget logUtil] put [string cat "Command Failed: " [my jget INITFILENAME]] [self] "write" $e
            [::FileStreamFactory::getInstance] delete [my jget filePath] [my jget INITFILENAME]
            error $e
        }
    }
    

    method read {} {
        return [my readAgain 0]
    }
    

    method readAgain {initializeCounter} {
        set METHOD_NAME "readAgain"
        if {[expr {[my jget filePath] eq [[my jget stringUtil] jget EMPTY_STRING]}]} {
            my jset filePath [expr {[::URLGLOBALS::getMainPath] + [[::PATH_GLOBALS::getInstance] jget INIT_PATH]}]
        }
        try {
            [my jget logUtil] putF [string cat "LicenseInitInfo File: " [my jget INITFILENAME]] [self] $METHOD_NAME
            set fileStreamFactory [::FileStreamFactory::getInstance]
            set iFile [$fileStreamFactory getFileInputStreamInstance [my jget filePath] [my jget INITFILENAME]]
            if {[expr {$iFile ne {}}]} {
                set iData [::AbDataInputStream new $iFile]
                set initInfo [::LicenseInitInfo new]
                set decodedByteArray [::DatabaseEncoder::decode [$iData readUTF]]
                set licenseIdDecoded $decodedByteArray
                $initInfo setLicenseId [[::WeakCrypt new 1] decrypt $licenseIdDecoded]
                set numberOfLicenseServers [$iData readInt]
                set NEXT_FILE [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget NEXT]] append " License Server From File: "] toString]
                set licenseServerDecoded {}
                for {set index 0} {[expr {$index < $numberOfLicenseServers}]} {jpostincr index 1} {
                    set decodedByteArray [::DatabaseEncoder::decode [$iData readUTF]]
                    set licenseServerDecoded $decodedByteArray
                    $initInfo setServer [[::WeakCrypt new 3] decrypt $licenseServerDecoded] $index
                    [my jget logUtil] putF [string cat $NEXT_FILE [jstr [$initInfo getServer $index]]] [self] $METHOD_NAME
                }
                return $initInfo
            } else {
                error [jexception Exception [string cat "Could Not Load License InitInfo: " [my jget INITFILENAME]]]
            }
        } on error {e} {
            try {
                [my jget logUtil] put [string cat "Command Failed: " [my jget INITFILENAME]] [self] $METHOD_NAME $e
            } on error {e2} {
                [my jget logUtil] put [string cat "LicenseInitInfo Read Retry: " [my jget INITFILENAME]] [self] "readAgain()" $e2
            }
            error [jexception Exception [string cat "LicenseInitInfo Read Error: " [my jget INITFILENAME]]]
        }
    }
    

    method getFilePath {} {
        return [my jget filePath]
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


