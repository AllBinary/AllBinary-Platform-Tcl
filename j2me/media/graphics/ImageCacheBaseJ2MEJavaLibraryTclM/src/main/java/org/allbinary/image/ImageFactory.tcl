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
# package org.allbinary.image

#ImageCacheBaseJavaLibrary - J2ME
oo::class create ::ImageFactory {
    superclass ::JObject
}

oo::define ::ImageFactory {
    method initFields_ImageFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ImageFactory
    }
    
    

    method createImageUrl {url} {
        return [::Image::createImage $url]
    }
    

    method createImage {caller width height} {
        return [[::MIDPUtil::getInstance] createImageWH $width $height]
    }
    

    method createImageFromInputStream {key inputStream} {
        set image [[::MIDPUtil::getInstance] createImageFromInputStream $inputStream]
        return $image
    }
    

    method createImageFromInputStream {inputStream} {
        return [[::MIDPUtil::getInstance] createImageFromInputStream $inputStream]
    }
}

namespace eval ::ImageFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageFactory new]
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
        return [::ImageFactory::staticGet_instance]
    }
}


