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
        return
    }

    constructor {} {
        next
        my initFields_PlatformBitmapBase
    }
    

    method getImage {} {
        return [::NullImage::staticGet_NULL_IMAGE]
    }
}

namespace eval ::PlatformBitmapBase {
}


