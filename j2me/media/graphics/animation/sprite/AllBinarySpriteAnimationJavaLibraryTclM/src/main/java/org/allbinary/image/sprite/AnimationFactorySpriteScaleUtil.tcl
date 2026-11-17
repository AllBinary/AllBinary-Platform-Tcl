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
# package org.allbinary.image.sprite

oo::class create ::AnimationFactorySpriteScaleUtil {
    superclass ::JObject
}

oo::define ::AnimationFactorySpriteScaleUtil {
    method initFields_AnimationFactorySpriteScaleUtil {} {
        my jset imageCache {}
        my jset imageScaleUtil {}
        my jset openGLUtil {}
        my jset j2seMath {}
        my jset openGLESImageExclusionUtil {}
        my jset imageCache [::ImageCacheFactory::getInstance]
        my jset imageScaleUtil [::ImageScaleUtil::getInstance]
        my jset openGLUtil [::OpenGLUtil::getInstance]
        my jset j2seMath [::J2SEMath::getInstance]
        my jset openGLESImageExclusionUtil [::OpenGLESImageExclusionUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_AnimationFactorySpriteScaleUtil
    }
    
    

    method createImage {image width height scaleWidth scaleHeight} {
        set spriteFactory [::SpriteFactory::getInstance]
        set sprite {}
        set scaledImage {}
        if {[expr {[expr {$scaleWidth != 0}] && [expr {$scaleHeight != 0}]}]} {
            set scaleX [expr {([expr {double($scaleWidth)}]) / ([expr {double($width)}])}]
            set scaleY [expr {([expr {double($scaleHeight)}]) / ([expr {double($height)}])}]
            if {[expr {([expr {[expr {$scaleX == 1.0}] && [expr {$scaleY == 1.0}]}]) || ([expr {[expr {$scaleX == 0.0}] || [expr {$scaleY == 0.0}]}])}]} {
                set scaledImage [[my jget openGLUtil] addImage $image]
                set sprite [$spriteFactory createSprite $scaledImage $width $height]
            } else {
                if {[[my jget openGLESImageExclusionUtil] isCustomScaling $image]} {
                    set width2 [[my jget j2seMath] round [expr {[expr {double(($scaleWidth))}] - 0.5}]]
                    set height2 [[my jget j2seMath] round [expr {[expr {double(($scaleHeight))}] - 0.5}]]
                    set multiplesOf16Width [jdiv $width2 16]
                    set by16Width [jint [expr {$multiplesOf16Width * 16}]]
                    set scaleX [expr {([expr {double($by16Width)}]) / [expr {double($width)}]}]
                    set multiplesOf16Height [jdiv $height2 16]
                    set by16Height [jint [expr {$multiplesOf16Height * 16}]]
                    set scaleY [expr {([expr {double($by16Height)}]) / [expr {double($height)}]}]
                    if {[expr {$scaleWidth < $width}]} {
                        set scaleX [expr {$scaleX * 2.35}]
                    }
                    if {[expr {$scaleHeight < $height}]} {
                        set scaleY [expr {$scaleY * 2.35}]
                    }
                }
                set scaledImage [[my jget imageScaleUtil] createImage2 [my jget imageCache] $image $scaleX 1.0 $scaleY 1.0 true]
                set sprite [$spriteFactory createSprite $scaledImage [jint [jd2i ([expr {[expr {double($width)}] * $scaleX}])]] [jint [jd2i ([expr {[expr {double($height)}] * $scaleY}])]]]
            }
        } else {
            set scaledImage [[my jget openGLUtil] addImage $image]
            set sprite [$spriteFactory createSprite $scaledImage $width $height]
        }
        return $sprite
    }
}

namespace eval ::AnimationFactorySpriteScaleUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnimationFactorySpriteScaleUtil new]
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
        return [::AnimationFactorySpriteScaleUtil::staticGet_instance]
    }
}


