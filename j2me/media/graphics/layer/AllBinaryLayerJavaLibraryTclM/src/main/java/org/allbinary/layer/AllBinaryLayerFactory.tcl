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
# package org.allbinary.layer

oo::class create ::AllBinaryLayerFactory {
    superclass ::JObject
}

oo::define ::AllBinaryLayerFactory {
    method initFields_AllBinaryLayerFactory {} {
        my jset rectangle {}
        
        return
    }
    

    constructor {rectangle} {
        next
        my initFields_AllBinaryLayerFactory
        my jset rectangle $rectangle
    }
    

    method getInstance {} {
        return [::AllBinaryLayer new [[::StringUtil::getInstance] jget EMPTY_STRING] [my jget rectangle] [::ViewPosition::getInstanceD]]
    }
}

namespace eval ::AllBinaryLayerFactory {
}


