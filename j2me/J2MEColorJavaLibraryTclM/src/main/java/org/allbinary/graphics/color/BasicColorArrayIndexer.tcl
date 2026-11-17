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
# package org.allbinary.graphics.color

oo::class create ::BasicColorArrayIndexer {
    superclass ::JObject
}

oo::define ::BasicColorArrayIndexer {
    method initFields_BasicColorArrayIndexer {} {
        my jset basicColorArray {}
        my jset circularIndexUtil {}
        
        
        return
    }
    

    constructor {basicColorArray} {
        next
        my initFields_BasicColorArrayIndexer
        my jset basicColorArray $basicColorArray
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [[my jget basicColorArray] length]]
    }
    

    method next {} {
        [my jget circularIndexUtil] next
    }
    

    method get {} {
        return [[my jget basicColorArray] get [[my jget circularIndexUtil] getIndex]]
    }
    

    method getBasicColorArray {} {
        return [my jget basicColorArray]
    }
}

namespace eval ::BasicColorArrayIndexer {
}


