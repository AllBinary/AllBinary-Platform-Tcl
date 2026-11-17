# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

#PlatformNullImageJavaLibrary
oo::class create ::PreLoadPlatformImage {
    superclass ::PlatformImage
}

oo::define ::PreLoadPlatformImage {
    method initFields_PreLoadPlatformImage {} {
        return
    }

    constructor {} {
        next
        my initFields_PreLoadPlatformImage
    }
    
}

namespace eval ::PreLoadPlatformImage {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PreLoadPlatformImage new]
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
        return [::PreLoadPlatformImage::staticGet_instance]
    }
}


