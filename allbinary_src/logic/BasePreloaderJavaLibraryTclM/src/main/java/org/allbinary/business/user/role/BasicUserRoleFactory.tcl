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

oo::class create ::BasicUserRoleFactory {
    superclass ::JObject
}

oo::define ::BasicUserRoleFactory {
    method initFields_BasicUserRoleFactory {} {
        my jset INACTIVITYTIMEOUT 0
        my jset CUSTOMERTIMEOUT 0
        my jset CUSTOMERMAXSESSIONTIME 0
        my jset MAXSESSIONTIME 0
        my jset INSTALLER {}
        my jset ADMINISTRATOR {}
        my jset CUSTOMER {}
        my jset SUBSCRIBERCUSTOMER {}
        my jset WHOLESALECUSTOMER {}
        my jset STOREMANAGER {}
        my jset PRODUCTMANAGER {}
        my jset CUSTOMERMANAGER {}
        my jset PAYMENTMANAGER {}
        my jset ORDERMANAGER {}
        my jset WEBMANAGER {}
        my jset REVIEWER {}
        my jset SHIPPING {}
        my jset ADJUSTER {}
        my jset WORKFLOWEDITOR {}
        my jset WIZARD {}
        my jset VIEWEDITOR {}
        my jset INACTIVITYTIMEOUT 360000000
        my jset CUSTOMERTIMEOUT 360000000
        my jset CUSTOMERMAXSESSIONTIME 360000000
        my jset MAXSESSIONTIME 360000000
        my jset INSTALLER [::BasicUserRole new "Installer" 16 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset ADMINISTRATOR [::BasicUserRole new "Administrator" 0 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset CUSTOMER [::BasicUserRole new "CustomerUser" "Customer User" 1 [my jget CUSTOMERTIMEOUT] [my jget CUSTOMERMAXSESSIONTIME]]
        my jset SUBSCRIBERCUSTOMER [::BasicUserRole new "SubscriberUser" "Subscriber User" 2 [my jget CUSTOMERTIMEOUT] [my jget CUSTOMERMAXSESSIONTIME]]
        my jset WHOLESALECUSTOMER [::BasicUserRole new "WholesaleUser" "Wholesale User" 3 [my jget CUSTOMERTIMEOUT] [my jget CUSTOMERMAXSESSIONTIME]]
        my jset STOREMANAGER [::BasicUserRole new "StoreManager" "Store Manager" 4 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset PRODUCTMANAGER [::BasicUserRole new "ProductManager" "Product Manager" 5 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset CUSTOMERMANAGER [::BasicUserRole new "UserManager" "User Manager" 6 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset PAYMENTMANAGER [::BasicUserRole new "PaymentManager" "Payment Manager" 7 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset ORDERMANAGER [::BasicUserRole new "OrderManager" "Order Manager" 8 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset WEBMANAGER [::BasicUserRole new "WebManager" "Web Manager" 9 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset REVIEWER [::BasicUserRole new "Reviewer" 10 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset SHIPPING [::BasicUserRole new "Shipping" 11 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset ADJUSTER [::BasicUserRole new "Adjuster" 12 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset WORKFLOWEDITOR [::BasicUserRole new "WorkFlowEditor" "WorkFlow Editor" 13 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset WIZARD [::BasicUserRole new "WizardUser" "Wizard User" 14 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        my jset VIEWEDITOR [::BasicUserRole new "ViewEditor" "View Editor" 15 [my jget MAXSESSIONTIME] [my jget INACTIVITYTIMEOUT]]
        return
    }

    constructor {} {
        next
        my initFields_BasicUserRoleFactory
    }
    
}

namespace eval ::BasicUserRoleFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicUserRoleFactory new]
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
        return [::BasicUserRoleFactory::staticGet_instance]
    }
}


