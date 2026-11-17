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
# package org.allbinary.globals

oo::class create ::UrlGlobalsInterface {
    superclass ::JObject
}

oo::define ::UrlGlobalsInterface {
    method initFields_UrlGlobalsInterface {} {
        return
    }

    constructor {} {
        next
        my initFields_UrlGlobalsInterface
    }
    

    method getMainPath {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method getTestHtmlPath {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method getWebappPath {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method isTestingMode {} {
        return false
    }
}

namespace eval ::UrlGlobalsInterface {
}


