# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.business.user.role

oo::class create ::BasicUserRoles {
    superclass ::JObject
}

oo::define ::BasicUserRoles {
    method initFields_BasicUserRoles {} {
        my jset roleVector {}
        my jset roleVector [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_BasicUserRoles
    }
    
    

    method getRole {role} {
        set roleVector [my getAll]
        set size [$roleVector size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set userRole [$roleVector get $index]
            if {[expr {[jcompareto $role [$userRole toString]] == 0}]} {
                return $userRole
            }
        }
        error [jexception Exception "Unable to get role - Unknown Role"]
    }
    

    method getAll {} {
        return [my jget roleVector]
    }
}

namespace eval ::BasicUserRoles {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicUserRoles new]
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
        return [::BasicUserRoles::staticGet_instance]
    }
}


