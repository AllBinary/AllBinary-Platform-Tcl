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
# package org.allbinary.media

oo::class create ::ScaleProperties {
    superclass ::JObject
}

oo::define ::ScaleProperties {
    method initFields_ScaleProperties {} {
        my jset scaleX 0.0
        my jset scaleY 0.0
        my jset scaleWidth 0
        my jset scaleHeight 0
        my jset shouldScale false
        my jset scaleX 0.0
        my jset scaleY 0.0
        my jset scaleWidth 0
        my jset scaleHeight 0
        my jset shouldScale false
        return
    }

    constructor {} {
        next
        my initFields_ScaleProperties
    }
    

    method toString {} {
        return [[[[[[[[[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget COLON_SEP]] appendboolean [my jget shouldScale]] append "scaleX: "] appendfloat [my jget scaleX]] append "scaleY: "] appendfloat [my jget scaleY]] append "scaleWidth: "] appendint [my jget scaleWidth]] append "scaleHeight: "] appendint [my jget scaleHeight]] toString]
    }
}

namespace eval ::ScaleProperties {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ScaleProperties new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
}


