# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.security.crypt.jcehelper

oo::class create ::BaseSecretComposite {
    superclass ::JObject
}

oo::define ::BaseSecretComposite {
    method initFields_BaseSecretComposite {} {
        return
    }

    constructor {} {
        next
        my initFields_BaseSecretComposite
    }
    

    method encrypt {array} {
        return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
    }
    

    method decrypt {array} {
        return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
    }
}

namespace eval ::BaseSecretComposite {
    variable NULL_SECRET_COMPOSITEValue {}
    variable NULL_SECRET_COMPOSITESet 0
    proc staticGet_NULL_SECRET_COMPOSITE {} {
        variable NULL_SECRET_COMPOSITEValue
        variable NULL_SECRET_COMPOSITESet
        if {!$NULL_SECRET_COMPOSITESet} {
            set NULL_SECRET_COMPOSITESet 1
            set NULL_SECRET_COMPOSITEValue [::BaseSecretComposite new]
        }
        return $NULL_SECRET_COMPOSITEValue
    }
    proc staticSet_NULL_SECRET_COMPOSITE {value} {
        variable NULL_SECRET_COMPOSITEValue
        variable NULL_SECRET_COMPOSITESet
        set NULL_SECRET_COMPOSITESet 1
        set NULL_SECRET_COMPOSITEValue $value
    }
}


