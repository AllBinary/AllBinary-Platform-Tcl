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

oo::class create ::AdminRoleFactory {
    superclass ::JObject
}

oo::define ::AdminRoleFactory {
    method initFields_AdminRoleFactory {} {
        my jset adminRoles {}
        my jset storeAdminRoles {}
        my jset storeManagementRoles {}
        my jset productManagementRoles {}
        my jset reviewManagementRoles {}
        my jset customerManagementRoles {}
        my jset workflowManagementRoles {}
        my jset orderManagementRoles {}
        my jset adjusterManagementRoles {}
        my jset shippingManagementRoles {}
        my jset webManagementRoles {}
        my jset adminRoles [::BasicArrayListD new]
        my jset storeAdminRoles [::BasicArrayListD new]
        my jset storeManagementRoles [::BasicArrayListD new]
        my jset productManagementRoles [::BasicArrayListD new]
        my jset reviewManagementRoles [::BasicArrayListD new]
        my jset customerManagementRoles [::BasicArrayListD new]
        my jset workflowManagementRoles [::BasicArrayListD new]
        my jset orderManagementRoles [::BasicArrayListD new]
        my jset adjusterManagementRoles [::BasicArrayListD new]
        my jset shippingManagementRoles [::BasicArrayListD new]
        my jset webManagementRoles [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AdminRoleFactory
        set basicUserRoleFactory [::BasicUserRoleFactory::getInstance]
        [my jget adminRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget storeAdminRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget storeAdminRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget CUSTOMERMANAGER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget ADJUSTER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget PRODUCTMANAGER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget REVIEWER]
        [my jget storeManagementRoles] add [$basicUserRoleFactory jget SHIPPING]
        [my jget productManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget productManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget productManagementRoles] add [$basicUserRoleFactory jget PRODUCTMANAGER]
        [my jget reviewManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget reviewManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget reviewManagementRoles] add [$basicUserRoleFactory jget REVIEWER]
        [my jget customerManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget customerManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget customerManagementRoles] add [$basicUserRoleFactory jget CUSTOMERMANAGER]
        [my jget workflowManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget workflowManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget workflowManagementRoles] add [$basicUserRoleFactory jget WORKFLOWEDITOR]
        [my jget orderManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget orderManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget adjusterManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget adjusterManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget adjusterManagementRoles] add [$basicUserRoleFactory jget ADJUSTER]
        [my jget shippingManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget shippingManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget shippingManagementRoles] add [$basicUserRoleFactory jget SHIPPING]
        [my jget webManagementRoles] add [$basicUserRoleFactory jget ADMINISTRATOR]
        [my jget webManagementRoles] add [$basicUserRoleFactory jget STOREMANAGER]
        [my jget webManagementRoles] add [$basicUserRoleFactory jget WEBMANAGER]
        [my jget webManagementRoles] add [$basicUserRoleFactory jget WORKFLOWEDITOR]
        [my jget webManagementRoles] add [$basicUserRoleFactory jget VIEWEDITOR]
    }
    

    method getProductManagementRoles {} {
        return [my jget productManagementRoles]
    }
    

    method getAdminRoles {} {
        return [my jget adminRoles]
    }
    

    method getStoreAdminRoles {} {
        return [my jget storeAdminRoles]
    }
    

    method getStoreManagementRoles {} {
        return [my jget storeManagementRoles]
    }
    

    method getReviewManagementRoles {} {
        return [my jget reviewManagementRoles]
    }
    

    method getCustomerManagementRoles {} {
        return [my jget customerManagementRoles]
    }
    

    method getWorkflowManagementRoles {} {
        return [my jget workflowManagementRoles]
    }
    

    method getWebManagementRoles {} {
        return [my jget webManagementRoles]
    }
    

    method getShippingManagementRoles {} {
        return [my jget shippingManagementRoles]
    }
    

    method getAdjusterManagementRoles {} {
        return [my jget adjusterManagementRoles]
    }
    

    method getOrderManagementRoles {} {
        return [my jget orderManagementRoles]
    }
}

namespace eval ::AdminRoleFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AdminRoleFactory new]
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
        return [::AdminRoleFactory::staticGet_instance]
    }
}


