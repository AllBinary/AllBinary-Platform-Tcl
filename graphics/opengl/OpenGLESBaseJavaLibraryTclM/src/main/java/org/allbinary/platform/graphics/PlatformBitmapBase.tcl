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
# package org.allbinary.platform.graphics

oo::class create ::PlatformBitmapBase {
    superclass ::JObject
}

oo::define ::PlatformBitmapBase {
    method initFields_PlatformBitmapBase {} {
        my jset alpha 0
        my jset basicColor {}
        my jset alpha 255
        my jset basicColor [[::BasicColorFactory::getInstance] jget NULL_COLOR]
        return
    }

    constructor {} {
        next
        my initFields_PlatformBitmapBase
    }
    

    method getWidth {} {
        return 0
    }
    

    method getHeight {} {
        return 0
    }
    

    method getImage {} {
        return [::NullImage::staticGet_NULL_IMAGE]
    }
}

namespace eval ::PlatformBitmapBase {
    variable NULL_PLATFORM_BITMAP_BASEValue {}
    variable NULL_PLATFORM_BITMAP_BASESet 0
    proc staticGet_NULL_PLATFORM_BITMAP_BASE {} {
        variable NULL_PLATFORM_BITMAP_BASEValue
        variable NULL_PLATFORM_BITMAP_BASESet
        if {!$NULL_PLATFORM_BITMAP_BASESet} {
            set NULL_PLATFORM_BITMAP_BASESet 1
            set NULL_PLATFORM_BITMAP_BASEValue [::PlatformBitmapBase new]
        }
        return $NULL_PLATFORM_BITMAP_BASEValue
    }
    proc staticSet_NULL_PLATFORM_BITMAP_BASE {value} {
        variable NULL_PLATFORM_BITMAP_BASEValue
        variable NULL_PLATFORM_BITMAP_BASESet
        set NULL_PLATFORM_BITMAP_BASESet 1
        set NULL_PLATFORM_BITMAP_BASEValue $value
    }
}


