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

oo::class create ::PartnerIdentifierFileUtil {
    superclass ::JObject
}

oo::define ::PartnerIdentifierFileUtil {
    method initFields_PartnerIdentifierFileUtil {} {
        my jset logUtil {}
        my jset FILE_NAME {}
        my jset logUtil [::LogUtil::getInstance]
        my jset FILE_NAME "partner.txt"
        return
    }

    constructor {} {
        next
        my initFields_PartnerIdentifierFileUtil
    }
    
    

    method get {} {
        try {
            set resourceUtil [::ResourceUtil::getInstance]
            set inputStream [$resourceUtil getResourceAsStream [my jget FILE_NAME]]
            set inputStreamReader [::InputStreamReader new $inputStream]
            set chars [jarray 30 0]
            set size [$inputStreamReader read $chars]
            set partnerString [[::StringUtil::getInstance] jget EMPTY_STRING]
            if {[expr {$size > 0}]} {
                set partnerString [jfromchars $chars 0 $size]
            }
            $inputStreamReader close
            return $partnerString
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET] $e
            return [[::StringUtil::getInstance] jget NULL_STRING]
        }
    }
}

namespace eval ::PartnerIdentifierFileUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PartnerIdentifierFileUtil new]
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
        return [::PartnerIdentifierFileUtil::staticGet_instance]
    }
}


