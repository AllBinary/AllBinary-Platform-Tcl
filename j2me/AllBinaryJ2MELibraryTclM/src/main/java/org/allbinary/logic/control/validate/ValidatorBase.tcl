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

oo::class create ::ValidatorBase {
    superclass ::JObject
}

oo::define ::ValidatorBase {
    method initFields_ValidatorBase {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_ValidatorBase
    }
    

    method isValid {} {
        return [[::BooleanFactory::getInstance] jget TRUE]
    }
    

    method validationInfo {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method toHashtable {} {
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
    

    method toList {} {
        return [[::BasicArrayListUtil::getInstance] getImmutableInstance]
    }
}

namespace eval ::ValidatorBase {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ValidatorBase new]
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
        return [::ValidatorBase::staticGet_instance]
    }
}


