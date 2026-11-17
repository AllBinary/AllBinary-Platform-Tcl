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
# package org.allbinary.logic.math.vector

oo::class create ::Vertex {
    superclass ::JObject
}

oo::define ::Vertex {
    method initFields_Vertex {} {
        my jset x {}
        my jset y {}
        my jset z {}
        my jset x [::BasicDecimal new 0]
        my jset y [::BasicDecimal new 0]
        my jset z [::BasicDecimal new 0]
        return
    }
    

    constructor {} {
        next
        my initFields_Vertex
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set positionStrings [::PositionStrings::getInstance]
        $stringBuffer append [$positionStrings jget X_LABEL]
        $stringBuffer append [[my jget x] toString]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [$positionStrings jget Y_LABEL]
        $stringBuffer append [[my jget y] toString]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [$positionStrings jget Z_LABEL]
        $stringBuffer append [[my jget z] toString]
        return [$stringBuffer toString]
    }
}

namespace eval ::Vertex {
}


