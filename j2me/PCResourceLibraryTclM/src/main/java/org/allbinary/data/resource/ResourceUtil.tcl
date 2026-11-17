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

#J2SE - PC
oo::class create ::ResourceUtil {
    superclass ::JObject
}

oo::define ::ResourceUtil {
    method initFields_ResourceUtil {} {
        my jset logUtil {}
        my jset path {}
        my jset ext {}
        my jset logUtil [::LogUtil::getInstance]
        my jset path [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset ext [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    
    

    constructor {} {
        next
        my initFields_ResourceUtil
    }
    

    method setLoadingPaths {path ext} {
        my jset path $path
        my jset ext $ext
    }
    

    method setClassLoader {classLoader} {
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
        set inputStream [::FileInputStream new [[[[[::StringMaker new] append [my jget path]] append $resource] append [my jget ext]] toString]]
        if {[expr {$inputStream ne {}}]} {
            set byteArray [jarray [$inputStream available] 0]
            [::StreamUtil::getInstance] getByteArray $inputStream [::ByteArrayOutputStream new] $byteArray
            return [::ByteArrayInputStream new $byteArray]
        }
        return $inputStream
    }
    

    method addResource {resource value} {
    }
}

namespace eval ::ResourceUtil {
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


