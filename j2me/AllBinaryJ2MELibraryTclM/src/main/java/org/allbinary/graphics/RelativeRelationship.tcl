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
# package org.allbinary.graphics

oo::class create ::RelativeRelationship {
    superclass ::JObject
}

oo::define ::RelativeRelationship {
    method initFields_RelativeRelationship {} {
        my jset typesAllowedList {}
        my jset x 0
        my jset y 0
        my jset z 0
        
        
        
        
        return
    }
    

    constructor {point typesAllowedList} {
        next
        my initFields_RelativeRelationship
        my jset x [$point getX]
        my jset y [$point getY]
        my jset z [$point getZ]
        my jset typesAllowedList $typesAllowedList
    }
    

    method getX {} {
        return [my jget x]
    }
    

    method getY {} {
        return [my jget y]
    }
    

    method getZ {} {
        return [my jget z]
    }
    

    method getTypesAllowedList {} {
        return [my jget typesAllowedList]
    }
    

    method setTypesAllowedList {typesAllowedList} {
        my jset typesAllowedList $typesAllowedList
    }
}

namespace eval ::RelativeRelationship {
    variable NULL_RELATIVE_RELATIONSHIPValue {}
    variable NULL_RELATIVE_RELATIONSHIPSet 0
    proc staticGet_NULL_RELATIVE_RELATIONSHIP {} {
        variable NULL_RELATIVE_RELATIONSHIPValue
        variable NULL_RELATIVE_RELATIONSHIPSet
        if {!$NULL_RELATIVE_RELATIONSHIPSet} {
            set NULL_RELATIVE_RELATIONSHIPSet 1
            set NULL_RELATIVE_RELATIONSHIPValue [::RelativeRelationship new [[::PointFactory::getInstance] jget ZERO_ZERO] [[::BasicArrayListUtil::getInstance] getImmutableInstance]]
        }
        return $NULL_RELATIVE_RELATIONSHIPValue
    }
    proc staticSet_NULL_RELATIVE_RELATIONSHIP {value} {
        variable NULL_RELATIVE_RELATIONSHIPValue
        variable NULL_RELATIVE_RELATIONSHIPSet
        set NULL_RELATIVE_RELATIONSHIPSet 1
        set NULL_RELATIVE_RELATIONSHIPValue $value
    }
}


