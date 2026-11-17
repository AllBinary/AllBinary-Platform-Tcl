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

oo::class create ::URLGLOBALS {
    superclass ::JObject
}

oo::define ::URLGLOBALS {
    method initFields_URLGLOBALS {} {
        return
    }

    constructor {} {
        next
        my initFields_URLGLOBALS
    }
    
    
    
    
    
}

namespace eval ::URLGLOBALS {
    variable urlGlobalsInterfaceValue {}
    variable urlGlobalsInterfaceSet 0
    proc staticGet_urlGlobalsInterface {} {
        variable urlGlobalsInterfaceValue
        variable urlGlobalsInterfaceSet
        if {!$urlGlobalsInterfaceSet} {
            set urlGlobalsInterfaceSet 1
            set urlGlobalsInterfaceValue [::AppUrlGlobals::staticGet_NULL_APP_URL_GLOBALS]
        }
        return $urlGlobalsInterfaceValue
    }
    proc staticSet_urlGlobalsInterface {value} {
        variable urlGlobalsInterfaceValue
        variable urlGlobalsInterfaceSet
        set urlGlobalsInterfaceSet 1
        set urlGlobalsInterfaceValue $value
    }
    proc init {urlGlobalsInterface} {
        ::URLGLOBALS::staticSet_urlGlobalsInterface $urlGlobalsInterface
    }
    proc isTestingMode {} {
        return [[::URLGLOBALS::staticGet_urlGlobalsInterface] isTestingMode]
    }
    proc getWebappPath {} {
        return [[::URLGLOBALS::staticGet_urlGlobalsInterface] getWebappPath]
    }
    proc getTestHtmlPath {} {
        return [[::URLGLOBALS::staticGet_urlGlobalsInterface] getTestHtmlPath]
    }
    proc getMainPath {} {
        return [[::URLGLOBALS::staticGet_urlGlobalsInterface] getMainPath]
    }
}


