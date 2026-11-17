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
# package org.allbinary

#import org.allbinary.logic.communication.log.PreLogUtil;
oo::class create ::AppletUtil {
    superclass ::JObject
}

oo::define ::AppletUtil {
    method initFields_AppletUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AppletUtil
    }
    
    
}

namespace eval ::AppletUtil {
    variable appletValue {}
    variable appletSet 0
    proc staticGet_applet {} {
        variable appletValue
        variable appletSet
        if {!$appletSet} {
            set appletSet 1
            set appletValue false
        }
        return $appletValue
    }
    proc staticSet_applet {value} {
        variable appletValue
        variable appletSet
        set appletSet 1
        set appletValue $value
    }
    proc setApplet {} {
        ::AppletUtil::staticSet_applet true
    }
    proc isAppletLoader {anyType} {
        return [::AppletUtil::staticGet_applet]
    }
}


