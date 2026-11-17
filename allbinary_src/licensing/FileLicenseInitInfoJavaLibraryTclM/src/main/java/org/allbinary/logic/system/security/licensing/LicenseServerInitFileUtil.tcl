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

oo::class create ::LicenseServerInitFileUtil {
    superclass ::JObject
}

oo::define ::LicenseServerInitFileUtil {
    method initFields_LicenseServerInitFileUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset NULL_OUTPUT_STREAM {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset NULL_OUTPUT_STREAM [::SimpleFileUtil::nullOutputStream]
        return
    }

    constructor {} {
        next
        my initFields_LicenseServerInitFileUtil
    }
    

    method init {} {
        try {
            set filePath [[::LicenseInitInfoUtil::getInstance] jget INITFILENAME]
            [::LicenseInitInfoUtil::getInstance] setFilePath [[::StringUtil::getInstance] jget EMPTY_STRING]
            if {[[::FileFactory::getInstance] isFile $filePath]} {
                [my jget logUtil] putF "Using Existing License File" [self] [[my jget commonStrings] jget INIT]
            } else {
                my write
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget INIT] $e
        }
    }
    

    method write {} {
        set fileOutputStream [my jget NULL_OUTPUT_STREAM]
        try {
            set resourceUtil [::ResourceUtil::getInstance]
            set filePath [[::LicenseInitInfoUtil::getInstance] jget INITFILENAME]
            set inputStream [$resourceUtil getResourceAsStream $filePath]
            [my jget logUtil] putF "Writing Default License File" [self] [[my jget commonStrings] jget INIT]
            set fileStreamFactory [::FileStreamFactory::getInstance]
            set fileOutputStream [$fileStreamFactory getFileOutputStreamInstance [[::StringUtil::getInstance] jget EMPTY_STRING] $filePath]
            set b 0
            set index 0
            while {true} {
                set b [$inputStream read]
                if {[expr {$b == [expr {-1}]}]} {
                    break
                }
                $fileOutputStream write $b
                jpostincr index 1
            }
            [my jget logUtil] putF [string cat "Wrote Bytes: " [jstr $index]] [self] [[my jget commonStrings] jget INIT]
            $fileOutputStream flush
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget INIT] $e
        } finally {
            [::StreamUtil::getInstance] close $fileOutputStream
        }
    }
}

namespace eval ::LicenseServerInitFileUtil {
}


