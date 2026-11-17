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
# package org.allbinary.game.paint.help

oo::class create ::UpdateMyFontProperties {
    superclass ::JObject
}

oo::define ::UpdateMyFontProperties {
    method initFields_UpdateMyFontProperties {} {
        my jset actionStringArray {}
        my jset keymappingBeginWidthArray {}
        my jset actionStringDeltaXArray {}
        my jset inputDeltaXArray {}
        my jset sepArray {}
        my jset sepWidthArray {}
        my jset charHeight 0
        my jset actionStringArray [[::StringUtil::getInstance] getArrayInstance]
        my jset keymappingBeginWidthArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
        my jset actionStringDeltaXArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
        my jset inputDeltaXArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY]
        my jset sepArray [[::StringUtil::getInstance] jget ONE_EMPTY_STRING_ARRAY_OF_ARRAYS]
        my jset sepWidthArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY]
        my jset charHeight 0
        return
    }

    constructor {} {
        next
        my initFields_UpdateMyFontProperties
    }
}

namespace eval ::UpdateMyFontProperties {
}


