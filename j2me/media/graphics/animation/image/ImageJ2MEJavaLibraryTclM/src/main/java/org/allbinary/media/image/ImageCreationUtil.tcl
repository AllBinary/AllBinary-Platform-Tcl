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
# package org.allbinary.media.image

oo::class create ::ImageCreationUtil {
    superclass ::JObject
}

oo::define ::ImageCreationUtil {
    method initFields_ImageCreationUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageCreationUtil
    }
    

    method createImageWH {width height} {
        set image [[::GameFeatureImageCacheFactory::getInstance] get [jclassname [self]] $width $height]
        return $image
    }
    

    method createImage {width height maxScaleX maxScaleY} {
        set image [[::GameFeatureImageCacheFactory::getInstance] get [jclassname [self]] [jint [expr {[jint [jd2i ([expr {[expr {double($width)}] * $maxScaleX}])]] + 1}]] [jint [expr {[jint [jd2i ([expr {[expr {double($height)}] * $maxScaleY}])]] + 1}]]]
        return $image
    }
}

namespace eval ::ImageCreationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageCreationUtil new]
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
        return [::ImageCreationUtil::staticGet_instance]
    }
}


