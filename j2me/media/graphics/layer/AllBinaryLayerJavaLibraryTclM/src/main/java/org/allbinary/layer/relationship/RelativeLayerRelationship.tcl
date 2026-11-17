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
# package org.allbinary.layer.relationship

oo::class create ::RelativeLayerRelationship {
    superclass ::RelativeRelationship
}

oo::define ::RelativeLayerRelationship {
    method initFields_RelativeLayerRelationship {} {
        my jset layer {}
        my jset layer [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        return
    }
    

    constructor {layer point typesAllowedList} {
        next $point $typesAllowedList
        my initFields_RelativeLayerRelationship
        my jset layer $layer
    }
    

    method getX {} {
        return [expr {[[my jget layer] getXP] + [next]}]
    }
    

    method getY {} {
        return [expr {[[my jget layer] getYP] + [next]}]
    }
    

    method getZ {} {
        return [expr {[[my jget layer] getZP] + [next]}]
    }
}

namespace eval ::RelativeLayerRelationship {
}


