# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.opengles.shader

oo::class create ::CompositeShaderUpdater {
    superclass ::ShaderUpdater
}

oo::define ::CompositeShaderUpdater {
    method initFields_CompositeShaderUpdater {} {
        my jset commonSeps {}
        my jset commonSeps [::CommonSeps::getInstance]
        return
    }
    
    

    constructor {uniformBlockArray uniformArray attributeArray attributeHandleArray} {
        next
        my initFields_CompositeShaderUpdater
    }
    

    method onSurfaceCreated {gl eglConfig programHandle} {
    }
    

    method onSurfaceDestroyed {gl} {
    }
}

namespace eval ::CompositeShaderUpdater {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::CompositeShaderUpdater new [[::StringUtil::getInstance] getArrayInstance] [[::StringUtil::getInstance] getArrayInstance] [[::StringUtil::getInstance] getArrayInstance] [[::NullUtil::getInstance] jget NULL_INT_ARRAY]]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::CompositeShaderUpdater::staticGet_instanceC]
    }
}


