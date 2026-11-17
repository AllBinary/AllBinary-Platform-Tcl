#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

oo::class create ::AboutPaintableFactory {
    superclass ::JObject
}

oo::define ::AboutPaintableFactory {
    method initFields_AboutPaintableFactory {} {
        my jset paintableArray {}
        my jset paintableArray [jarrayfrom [list [::NullPaintable::getInstance]]]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AboutPaintableFactory
        set INFO [jarrayfrom [list "Built with the" "AllBinary Platform" [[::StringUtil::getInstance] jget EMPTY_STRING] "Comments or Questions:" "support@allbinary.com"]]
        set DEVELOPERS [jarrayfrom [list "Developed By:" "Travis Berthelot"]]
        my jset paintableArray [[::AboutPaintable::getInstance $INFO $DEVELOPERS] getPaintableArrayInstance]
    }
}

namespace eval ::AboutPaintableFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AboutPaintableFactory new]
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
        return [::AboutPaintableFactory::staticGet_instance]
    }
}


