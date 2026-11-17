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
# package org.allbinary.logic.system.loader

oo::class create ::WebappClassLoaderInfo {
    superclass ::JObject
}

oo::define ::WebappClassLoaderInfo {
    method initFields_WebappClassLoaderInfo {} {
        return
    }
    

    constructor {} {
        next
        my initFields_WebappClassLoaderInfo
    }
    
    
}

namespace eval ::WebappClassLoaderInfo {
    variable classLoaderValue {}
    variable classLoaderSet 0
    proc staticGet_classLoader {} {
        variable classLoaderValue
        variable classLoaderSet
        if {!$classLoaderSet} {
            set classLoaderSet 1
            set classLoaderValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $classLoaderValue
    }
    proc staticSet_classLoader {value} {
        variable classLoaderValue
        variable classLoaderSet
        set classLoaderSet 1
        set classLoaderValue $value
    }
    proc setLoader {classLoader} {
        ::WebappClassLoaderInfo::staticSet_classLoader $classLoader
    }
    proc getLoader {} {
        return [::WebappClassLoaderInfo::staticGet_classLoader]
    }
}


