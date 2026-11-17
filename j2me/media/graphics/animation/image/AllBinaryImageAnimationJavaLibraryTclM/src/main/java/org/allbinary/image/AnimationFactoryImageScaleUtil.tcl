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
# package org.allbinary.image

oo::class create ::AnimationFactoryImageScaleUtil {
    superclass ::JObject
}

oo::define ::AnimationFactoryImageScaleUtil {
    method initFields_AnimationFactoryImageScaleUtil {} {
        my jset imageScaleUtil {}
        my jset imageScaleUtil [::ImageJ2MEScaleUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_AnimationFactoryImageScaleUtil
    }
    
    

    method createImage {image width height scaleWidth scaleHeight} {
        set scaledImage {}
        if {[expr {[expr {$scaleWidth != 0}] && [expr {$scaleHeight != 0}]}]} {
            set scaleX [expr {([expr {double($scaleWidth)}]) / ([expr {double($width)}])}]
            set scaleY [expr {([expr {double($scaleHeight)}]) / ([expr {double($height)}])}]
            if {[expr {([expr {[expr {$scaleX == 1.0}] && [expr {$scaleY == 1.0}]}]) || ([expr {[expr {$scaleX == 0.0}] || [expr {$scaleY == 0.0}]}])}]} {
                set scaledImage $image
            } else {
                set scaledWidth [jint [jd2i ([expr {$scaleX * [expr {double($width)}]}])]]
                set scaledHeight [jint [jd2i ([expr {$scaleY * [expr {double($height)}]}])]]
                set scaledImage [[my jget imageScaleUtil] scale $image $scaledWidth $scaledHeight]
            }
        } else {
            set scaledImage $image
        }
        return $scaledImage
    }
    

    method processAdjust {baseImageAnimationFactory} {
        set scaleProperties [$baseImageAnimationFactory getScalePropertiesP]
        if {[expr {[expr {[$scaleProperties jget scaleWidth] != 0}] && [expr {[$scaleProperties jget scaleHeight] != 0}]}]} {
            set animationFactoryInitializationVisitor [$baseImageAnimationFactory getAnimationFactoryInitializationVisitorP]
            set scaleX [expr {([expr {double([$scaleProperties jget scaleWidth])}]) / ([expr {double([$animationFactoryInitializationVisitor jget width])}])}]
            set scaleY [expr {([expr {double([$scaleProperties jget scaleHeight])}]) / ([expr {double([$animationFactoryInitializationVisitor jget height])}])}]
            if {[expr {([expr {[expr {$scaleX == 1.0}] && [expr {$scaleY == 1.0}]}]) || ([expr {[expr {$scaleX == 0.0}] || [expr {$scaleY == 0.0}]}])}]} {
            } else {
                $animationFactoryInitializationVisitor jset dx [jint ([expr {[$animationFactoryInitializationVisitor jget originalDx] * $scaleX}])]
                $animationFactoryInitializationVisitor jset dy [jint ([expr {[$animationFactoryInitializationVisitor jget originalDy] * $scaleY}])]
            }
        } else {
        }
    }
}

namespace eval ::AnimationFactoryImageScaleUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnimationFactoryImageScaleUtil new]
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
        return [::AnimationFactoryImageScaleUtil::staticGet_instance]
    }
}


