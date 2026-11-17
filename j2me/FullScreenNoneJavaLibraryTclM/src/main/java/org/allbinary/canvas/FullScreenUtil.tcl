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
# package org.allbinary.canvas

oo::class create ::FullScreenUtil {
    superclass ::JObject
}

oo::define ::FullScreenUtil {
    method initFields_FullScreenUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_FullScreenUtil
    }
    
    

    method initOnRun {fullScreenInterface commandListener} {
        if {[expr {$commandListener ne {}}]} {
            my init $fullScreenInterface
        }
    }
    

    method init {fullScreenInterface} {
    }
    

    method isScreenChange {isFullScreen} {
        set mainFeatureFactory [::MainFeatureFactory::getInstance]
        set features [::Features::getInstance]
        if {[expr {[$features isFeature [$mainFeatureFactory jget FULL_SCREEN]] != $isFullScreen}]} {
            return true
        }
        return false
    }
    

    method isScreenChangeCanvas {fullScreenInterface} {
        return [my isScreenChange false]
    }
}

namespace eval ::FullScreenUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FullScreenUtil new]
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
        return [::FullScreenUtil::staticGet_instance]
    }
}


