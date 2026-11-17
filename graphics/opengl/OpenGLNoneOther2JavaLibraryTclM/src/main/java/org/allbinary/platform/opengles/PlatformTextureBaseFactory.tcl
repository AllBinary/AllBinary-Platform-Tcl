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
# package org.allbinary.platform.opengles

oo::class create ::PlatformTextureBaseFactory {
    superclass ::JObject
}

oo::define ::PlatformTextureBaseFactory {
    method initFields_PlatformTextureBaseFactory {} {
        my jset commonStrings {}
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_PlatformTextureBaseFactory
    }
    

    method load {gl target level image border flip} {
    }
}

namespace eval ::PlatformTextureBaseFactory {
    variable NULL_PLATFORM_TEXTURE_BASE_FACTORYValue {}
    variable NULL_PLATFORM_TEXTURE_BASE_FACTORYSet 0
    proc staticGet_NULL_PLATFORM_TEXTURE_BASE_FACTORY {} {
        variable NULL_PLATFORM_TEXTURE_BASE_FACTORYValue
        variable NULL_PLATFORM_TEXTURE_BASE_FACTORYSet
        if {!$NULL_PLATFORM_TEXTURE_BASE_FACTORYSet} {
            set NULL_PLATFORM_TEXTURE_BASE_FACTORYSet 1
            set NULL_PLATFORM_TEXTURE_BASE_FACTORYValue [::PlatformTextureBaseFactory new]
        }
        return $NULL_PLATFORM_TEXTURE_BASE_FACTORYValue
    }
    proc staticSet_NULL_PLATFORM_TEXTURE_BASE_FACTORY {value} {
        variable NULL_PLATFORM_TEXTURE_BASE_FACTORYValue
        variable NULL_PLATFORM_TEXTURE_BASE_FACTORYSet
        set NULL_PLATFORM_TEXTURE_BASE_FACTORYSet 1
        set NULL_PLATFORM_TEXTURE_BASE_FACTORYValue $value
    }
}


