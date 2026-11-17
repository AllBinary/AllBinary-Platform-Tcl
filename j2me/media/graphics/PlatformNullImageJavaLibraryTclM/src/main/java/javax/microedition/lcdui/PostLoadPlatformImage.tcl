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
oo::class create ::PostLoadPlatformImage {
    superclass ::PlatformImage
}

oo::define ::PostLoadPlatformImage {
    method initFields_PostLoadPlatformImage {} {
        return
    }

    constructor {} {
        next
        my initFields_PostLoadPlatformImage
    }
    
}

namespace eval ::PostLoadPlatformImage {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PostLoadPlatformImage new]
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
        return [::PostLoadPlatformImage::staticGet_instance]
    }
}


