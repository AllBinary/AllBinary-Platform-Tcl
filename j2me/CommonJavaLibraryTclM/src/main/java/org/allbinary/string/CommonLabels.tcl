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
# package org.allbinary.string

oo::class create ::CommonLabels {
    superclass ::JObject
}

oo::define ::CommonLabels {
    method initFields_CommonLabels {} {
        my jset WIDTH_LABEL {}
        my jset HEIGHT_LABEL {}
        my jset END_LABEL {}
        my jset TOTAL_LABEL {}
        my jset INDEX_LABEL {}
        my jset START_LABEL {}
        my jset COMMAND_LABEL {}
        my jset NAME_LABEL {}
        my jset START {}
        my jset ELAPSED {}
        my jset CURRENT {}
        my jset NEXT {}
        my jset ITEM_LABEL {}
        my jset RESULT_ {}
        my jset COLON_SEP {}
        my jset WIDTH_LABEL " Width: "
        my jset HEIGHT_LABEL " Height: "
        my jset END_LABEL "End: "
        my jset TOTAL_LABEL "Total: "
        my jset INDEX_LABEL "index: "
        my jset START_LABEL "Start: "
        my jset COMMAND_LABEL "Command: "
        my jset NAME_LABEL "Name: "
        my jset START [my jget START_LABEL]
        my jset ELAPSED " Elapsed: "
        my jset CURRENT " Current: "
        my jset NEXT "Next"
        my jset ITEM_LABEL "Item: "
        my jset RESULT_ "Result: "
        my jset COLON_SEP ": "
        return
    }

    constructor {} {
        next
        my initFields_CommonLabels
    }
    
}

namespace eval ::CommonLabels {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonLabels new]
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
        return [::CommonLabels::staticGet_instance]
    }
}


