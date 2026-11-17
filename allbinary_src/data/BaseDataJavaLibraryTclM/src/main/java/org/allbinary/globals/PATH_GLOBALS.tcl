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
# package org.allbinary.globals

oo::class create ::PATH_GLOBALS {
    superclass ::JObject
}

oo::define ::PATH_GLOBALS {
    method initFields_PATH_GLOBALS {} {
        my jset DATA_PATH {}
        my jset INIT_PATH {}
        my jset VIEWS_PATH {}
        my jset LOG_PATH {}
        my jset BACKUP_PATH {}
        
        
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_PATH_GLOBALS
        set stringBuffer [::StringMaker new]
        set abPathData [::AbPathData::getInstance]
        $stringBuffer append "data"
        $stringBuffer append [$abPathData jget SEPARATOR]
        my jset DATA_PATH [$stringBuffer toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringBuffer append [my jget DATA_PATH]
        $stringBuffer append [[::CommonStrings::getInstance] jget INIT]
        $stringBuffer append [$abPathData jget SEPARATOR]
        my jset INIT_PATH [$stringBuffer toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringBuffer append [my jget DATA_PATH]
        $stringBuffer append "log"
        $stringBuffer append [$abPathData jget SEPARATOR]
        my jset LOG_PATH [$stringBuffer toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringBuffer append [my jget DATA_PATH]
        $stringBuffer append "backup"
        $stringBuffer append [$abPathData jget SEPARATOR]
        my jset BACKUP_PATH [$stringBuffer toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringBuffer append [my jget INIT_PATH]
        $stringBuffer append "views"
        $stringBuffer append [$abPathData jget SEPARATOR]
        my jset VIEWS_PATH [$stringBuffer toString]
    }
}

namespace eval ::PATH_GLOBALS {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PATH_GLOBALS new]
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
        return [::PATH_GLOBALS::staticGet_instance]
    }
}


