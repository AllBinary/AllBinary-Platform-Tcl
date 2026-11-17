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
# package org.allbinary.logic

oo::class create ::PropertyInitUtil {
    superclass ::JObject
}

oo::define ::PropertyInitUtil {
    method initFields_PropertyInitUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_PropertyInitUtil
    }
    
}

namespace eval ::PropertyInitUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PropertyInitUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {value} {
        set commonStrings [::CommonStrings::getInstance]
        set logUtil [::LogUtil::getInstance]
        $logUtil putF [[[[::StringMaker new] append "PropertyInitUtil: "] appendint $value] toString] $logUtil [$commonStrings jget CONSTRUCTOR]
        return [::PropertyInitUtil::staticGet_instance]
    }
}


