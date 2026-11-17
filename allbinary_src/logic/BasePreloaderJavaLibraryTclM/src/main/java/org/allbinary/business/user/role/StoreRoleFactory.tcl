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
# package org.allbinary.business.user.role

oo::class create ::StoreRoleFactory {
    superclass ::JObject
}

oo::define ::StoreRoleFactory {
    method initFields_StoreRoleFactory {} {
        my jset roles {}
        my jset subscriberRoles {}
        my jset wholesaleRoles {}
        my jset roles [::BasicArrayListD new]
        my jset subscriberRoles [::BasicArrayListD new]
        my jset wholesaleRoles [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_StoreRoleFactory
        set basicUserRoleFactory [::BasicUserRoleFactory::getInstance]
        [my jget roles] add [$basicUserRoleFactory jget CUSTOMER]
        [my jget roles] add [$basicUserRoleFactory jget SUBSCRIBERCUSTOMER]
        [my jget roles] add [$basicUserRoleFactory jget WHOLESALECUSTOMER]
        [my jget subscriberRoles] add [$basicUserRoleFactory jget SUBSCRIBERCUSTOMER]
        [my jget wholesaleRoles] add [$basicUserRoleFactory jget WHOLESALECUSTOMER]
    }
    

    method getRoles {} {
        return [my jget roles]
    }
    

    method getSubscriberRoles {} {
        return [my jget subscriberRoles]
    }
    

    method getWholesaleRoles {} {
        return [my jget wholesaleRoles]
    }
}

namespace eval ::StoreRoleFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StoreRoleFactory new]
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
        return [::StoreRoleFactory::staticGet_instance]
    }
}


