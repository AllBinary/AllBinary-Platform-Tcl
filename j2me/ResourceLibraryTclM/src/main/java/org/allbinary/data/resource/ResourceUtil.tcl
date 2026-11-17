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
# package org.allbinary.data.resource

#J2SE - J2ME
oo::class create ::ResourceUtil {
    superclass ::JObject
}

oo::define ::ResourceUtil {
    method initFields_ResourceUtil {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_ResourceUtil
    }
    

    method setLoadingPaths {path ext} {
        [my jget logUtil] putF [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED] [self] "setLoadingPaths"
    }
    

    method setClassLoader {classLoader} {
        [my jget logUtil] putF [[[[::StringMaker new] append "Resource Loader: "] append [jclassname $classLoader]] toString] [self] "setClassLoader"
        ::ResourceUtil::staticSet_classLoader $classLoader
    }
    

    method getResourceAsStream {resource} {
        set inputStream [my getResourceAsStreamAtStart $resource 2]
        if {[expr {$inputStream eq {}}]} {
            set inputStream [my getResourceAsStreamAtStart $resource 1]
            if {[expr {$inputStream eq {}}]} {
                error [jexception Exception [[[[::StringMaker new] append "Unable to obtain: "] append $resource] toString]]
            }
        }
        return $inputStream
    }
    

    method getResourceAsStreamAtStart {resource startIndex} {
        set commonSeps [::CommonSeps::getInstance]
        set index [string first [$commonSeps jget COLON] $resource]
        set resourcePath [jsubstring $resource [jint [expr {$index + $startIndex}]]]
        set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
        if {[expr {$inputStream ne {}}]} {
            return $inputStream
        }
        set classLoader [::ResourceUtil::staticGet_classLoader]
        set inputStream [$classLoader getResourceAsStream $resourcePath]
        if {[expr {$inputStream ne {}}]} {
            return $inputStream
        }
        set inputStream [[[::Thread::currentThread] getContextClassLoader] getResourceAsStream $resourcePath]
        if {[expr {$inputStream ne {}}]} {
            return $inputStream
        }
        return $inputStream
    }
    

    method addResource {resource value} {
    }
}

namespace eval ::ResourceUtil {
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
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ResourceUtil new]
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
        return [::ResourceUtil::staticGet_instance]
    }
}


