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
# package org.allbinary.graphics.form

oo::class create ::FormTypeFactory {
    superclass ::JObject
}

oo::define ::FormTypeFactory {
    method initFields_FormTypeFactory {} {
        my jset UNK {}
        my jset NULL_FORM_TYPE {}
        my jset TEMP_HORIZONTAL_FORM {}
        my jset HORIZONTAL_FORM {}
        my jset VERTICAL_CENTER_FORM {}
        my jset UNK "Unknown FormType"
        my jset NULL_FORM_TYPE [::FormType new [[::StringUtil::getInstance] jget NULL_STRING]]
        my jset TEMP_HORIZONTAL_FORM [::FormType new "TempHorizontal"]
        my jset HORIZONTAL_FORM [::FormType new "Horizontal"]
        my jset VERTICAL_CENTER_FORM [::FormType new "Vertical"]
        return
    }

    constructor {} {
        next
        my initFields_FormTypeFactory
    }
    
    

    method getFormType {} {
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set formType {}
        if {[$displayInfo isPortrait]} {
            set formType [my jget VERTICAL_CENTER_FORM]
        } else {
            set formType [my jget HORIZONTAL_FORM]
        }
        return $formType
    }
}

namespace eval ::FormTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FormTypeFactory new]
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
        return [::FormTypeFactory::staticGet_instance]
    }
}


