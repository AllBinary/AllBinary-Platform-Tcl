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
# package org.allbinary.logic.control.validate

oo::class create ::ValidatorBaseInterface {
    superclass ::JObject
}

oo::define ::ValidatorBaseInterface {
    method initFields_ValidatorBaseInterface {} {
        return
    }
    

    method isValid {} {
        error [jexception AbstractMethodError isValid]
    }
    

    method validationInfo {} {
        error [jexception AbstractMethodError validationInfo]
    }
    

    method toHashtable {} {
        error [jexception AbstractMethodError toHashtable]
    }
    

    method toList {} {
        error [jexception AbstractMethodError toList]
    }
}

namespace eval ::ValidatorBaseInterface {
}


