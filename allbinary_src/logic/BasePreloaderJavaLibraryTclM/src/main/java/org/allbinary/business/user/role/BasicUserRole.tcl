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

oo::class create ::BasicUserRole {
    superclass ::JObject
}

oo::define ::BasicUserRole {
    method initFields_BasicUserRole {} {
        my jset m_int_RoleId 0
        my jset role {}
        my jset displayValue {}
        my jset sessionTimeout 0
        my jset sessionInactivityTimeout 0
        
        
        
        
        
        return
    }
    

    constructor {aRole a_int_RoleId aSessionTimeout aSessionInactivityTimeout} {
        # this($aRole $aRole $a_int_RoleId $aSessionTimeout $aSessionInactivityTimeout): TclOO classes have one constructor
    }
    

    # Java constructor: TclOO classes have one constructor
    method constructor5 {aRole aDisplayValue a_int_RoleId aSessionTimeout aSessionInactivityTimeout} {
        my jset m_int_RoleId $a_int_RoleId
        my jset role $aRole
        my jset displayValue $aDisplayValue
        my jset sessionTimeout $aSessionTimeout
        my jset sessionInactivityTimeout $aSessionInactivityTimeout
        [[::BasicUserRoles::getInstance] jget roleVector] add [self]
    }
    

    method getRoleId {} {
        return [my jget m_int_RoleId]
    }
    

    method getRole {} {
        return [my jget role]
    }
    

    method getSessionTimeout {} {
        return [my jget sessionTimeout]
    }
    

    method getSessionInactivityTimeout {} {
        return [my jget sessionInactivityTimeout]
    }
    

    method equals {basicUserRole} {
        if {[expr {[my getRoleId] == [$basicUserRole getRoleId]}]} {
            return true
        }
        return false
    }
    

    method toString {} {
        return [my getRole]
    }
}

namespace eval ::BasicUserRole {
}


