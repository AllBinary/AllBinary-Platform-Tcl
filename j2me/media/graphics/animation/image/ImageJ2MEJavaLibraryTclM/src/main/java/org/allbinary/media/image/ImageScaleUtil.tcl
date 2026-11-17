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

oo::class create ::ImageScaleUtil {
    superclass ::JObject
}

oo::define ::ImageScaleUtil {
    method initFields_ImageScaleUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ImageScaleUtil
    }
    

    method createImage2 {imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached} {
        return [my createImage3 $imageCache $originalImage $scaleNominatorX $scaleDenominatorX $scaleNominatorY $scaleDenominatorY $cached true]
    }
    

    method createImage3 {imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached mutable} {
        return $originalImage
    }
}

namespace eval ::ImageScaleUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ImageScaleUtil new]
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
        return [::ImageScaleUtil::staticGet_instance]
    }
}


