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
# package org.allbinary.logic.math

oo::class create ::BasicDecimal {
    superclass ::JObject
}

oo::define ::BasicDecimal {
    method initFields_BasicDecimal {} {
        my jset units 0
        my jset scaled 0
        my jset factor 0
        my jset factorValue 0
        
        my jset scaled 0
        my jset factor [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_FACTOR]
        my jset factorValue [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_VALUE]
        return
    }
    
    

    constructor {units} {
        next
        my initFields_BasicDecimal
        my jset units $units
        my updateScaled
    }
    

    method setint {value} {
        my jset units $value
        my updateScaled
    }
    

    method setlong {value} {
        my jset units $value
        my updateScaled
    }
    

    method set {bigDecimal} {
        my jset units [$bigDecimal getUnscaled]
        my updateScaled
    }
    

    method addint {value} {
        my jset units [jlong [expr {[my jget units] + $value}]]
        my updateScaled
    }
    

    method addlong {value} {
        my jset units [jlong [expr {[my jget units] + $value}]]
        my updateScaled
    }
    

    method add {bigDecimal} {
        my jset units [jlong [expr {[my jget units] + [$bigDecimal getUnscaled]}]]
        my updateScaled
    }
    

    method subtractint {value} {
        my jset units [jlong [expr {[my jget units] - $value}]]
        my updateScaled
    }
    

    method subtractlong {value} {
        my jset units [jlong [expr {[my jget units] - $value}]]
        my updateScaled
    }
    

    method subtract {bigDecimal} {
        my jset units [jlong [expr {[my jget units] - [$bigDecimal getUnscaled]}]]
        my updateScaled
    }
    

    method multiplyint {value} {
        my jset units [jlong [expr {[my jget units] * $value}]]
        my updateScaled
    }
    

    method multiplylong {value} {
        my jset units [jlong [expr {[my jget units] * $value}]]
        my updateScaled
    }
    

    method multiply {bigDecimal} {
        my jset units [jlong [expr {[my jget units] * [$bigDecimal getUnscaled]}]]
        my updateScaled
    }
    

    method divideint {value} {
        my jset units [jdiv [my jget units] $value]
        my updateScaled
    }
    

    method dividelong {value} {
        my jset units [jdiv [my jget units] $value]
        my updateScaled
    }
    

    method divide {bigDecimal} {
        my jset units [jdiv [my jget units] [$bigDecimal getUnscaled]]
        my updateScaled
    }
    

    method getUnscaled {} {
        return [my jget units]
    }
    

    method updateScaled {} {
        my jset scaled [jint ([jdiv [my jget units] [my jget factorValue]])]
    }
    

    method getScaled {} {
        return [my jget scaled]
    }
    

    method toString {} {
        return [jstr [my jget units]]
    }
    

    method getScaledFactor {} {
        return [my jget factor]
    }
    

    method getScaledFactorValue {} {
        return [my jget factorValue]
    }
}

namespace eval ::BasicDecimal {
    variable ZERO_BIGDECIMALValue {}
    variable ZERO_BIGDECIMALSet 0
    proc staticGet_ZERO_BIGDECIMAL {} {
        variable ZERO_BIGDECIMALValue
        variable ZERO_BIGDECIMALSet
        if {!$ZERO_BIGDECIMALSet} {
            set ZERO_BIGDECIMALSet 1
            set ZERO_BIGDECIMALValue [::BasicDecimal new 0]
        }
        return $ZERO_BIGDECIMALValue
    }
    proc staticSet_ZERO_BIGDECIMAL {value} {
        variable ZERO_BIGDECIMALValue
        variable ZERO_BIGDECIMALSet
        set ZERO_BIGDECIMALSet 1
        set ZERO_BIGDECIMALValue $value
    }
    proc createBigDecimal {bigDecimal} {
        return [::BasicDecimal new [$bigDecimal getUnscaled]]
    }
}


