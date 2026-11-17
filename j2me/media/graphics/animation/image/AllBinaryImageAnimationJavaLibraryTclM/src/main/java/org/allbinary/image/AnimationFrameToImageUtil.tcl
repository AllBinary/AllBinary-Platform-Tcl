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
# package org.allbinary.image

oo::class create ::AnimationFrameToImageUtil {
    superclass ::JObject
}

oo::define ::AnimationFrameToImageUtil {
    method initFields_AnimationFrameToImageUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_AnimationFrameToImageUtil
    }
    
    

    method getInstanceTranslate {width height animationInterface} {
        set image [[::GameFeatureImageCacheFactory::getInstance] get [jclassname [::AnimationFrameToImageUtil::staticGet_instance]] ([expr {([jint [expr {$width * 3}]]) >> 1}]) ([expr {([jint [expr {$height * 3}]]) >> 1}])]
        set graphics [$image getGraphics]
        set tranlateX ([expr {$width >> 2}])
        set tranlateY ([expr {$height >> 2}])
        $graphics translate $tranlateX $tranlateY
        $animationInterface paintXY $graphics 0 0
        $graphics translate [expr {-$tranlateX}] [expr {-$tranlateY}]
        return $image
    }
    

    method getInstanceWH {width height animationInterface} {
        set image [[::GameFeatureImageCacheFactory::getInstance] get [jclassname [::AnimationFrameToImageUtil::staticGet_instance]] $width $height]
        set graphics [$image getGraphics]
        $animationInterface paintXY $graphics 0 0
        return $image
    }
}

namespace eval ::AnimationFrameToImageUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnimationFrameToImageUtil new]
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
        return [::AnimationFrameToImageUtil::staticGet_instance]
    }
}


