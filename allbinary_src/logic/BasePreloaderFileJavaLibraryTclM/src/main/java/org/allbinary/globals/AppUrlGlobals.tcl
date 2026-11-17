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

#implements
oo::class create ::AppUrlGlobals {
    superclass ::UrlGlobalsInterface
}

oo::define ::AppUrlGlobals {
    method initFields_AppUrlGlobals {} {
        my jset path {}
        my jset path [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }

    constructor {} {
        next
        my initFields_AppUrlGlobals
    }
    

    method isTestingMode {} {
        return false
    }
    

    method getWebappPath {} {
        return [my jget path]
    }
    

    method setWebappPath {path} {
        my jset path $path
        if {[expr {!([expr {[jendswith [my jget path] "\\"] || [jendswith [my jget path] "/"]}])}]} {
            my jset path [string cat [my jget path] "\\"]
        }
    }
    

    method getTestHtmlPath {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method getMainPath {} {
        return [my jget path]
    }
}

namespace eval ::AppUrlGlobals {
    variable NULL_APP_URL_GLOBALSValue {}
    variable NULL_APP_URL_GLOBALSSet 0
    proc staticGet_NULL_APP_URL_GLOBALS {} {
        variable NULL_APP_URL_GLOBALSValue
        variable NULL_APP_URL_GLOBALSSet
        if {!$NULL_APP_URL_GLOBALSSet} {
            set NULL_APP_URL_GLOBALSSet 1
            set NULL_APP_URL_GLOBALSValue [::AppUrlGlobals new]
        }
        return $NULL_APP_URL_GLOBALSValue
    }
    proc staticSet_NULL_APP_URL_GLOBALS {value} {
        variable NULL_APP_URL_GLOBALSValue
        variable NULL_APP_URL_GLOBALSSet
        set NULL_APP_URL_GLOBALSSet 1
        set NULL_APP_URL_GLOBALSValue $value
    }
}


