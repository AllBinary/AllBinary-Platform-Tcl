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
# package org.allbinary.game.configuration.feature

oo::class create ::GameFeatureChoiceGroups {
    superclass ::JObject
}

oo::define ::GameFeatureChoiceGroups {
    method initFields_GameFeatureChoiceGroups {} {
        my jset hashtable {}
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        return
    }
    

    constructor {} {
        next
        my initFields_GameFeatureChoiceGroups
    }
    
    
    

    method get {} {
        return [my jget hashtable]
    }
    

    method add {name list} {
        [my jget hashtable] put $name $list
    }
}

namespace eval ::GameFeatureChoiceGroups {
    variable gameFeatureChoiceGroupsExclusiveValue {}
    variable gameFeatureChoiceGroupsExclusiveSet 0
    proc staticGet_gameFeatureChoiceGroupsExclusive {} {
        variable gameFeatureChoiceGroupsExclusiveValue
        variable gameFeatureChoiceGroupsExclusiveSet
        if {!$gameFeatureChoiceGroupsExclusiveSet} {
            set gameFeatureChoiceGroupsExclusiveSet 1
            set gameFeatureChoiceGroupsExclusiveValue [::GameFeatureChoiceGroups new]
        }
        return $gameFeatureChoiceGroupsExclusiveValue
    }
    proc staticSet_gameFeatureChoiceGroupsExclusive {value} {
        variable gameFeatureChoiceGroupsExclusiveValue
        variable gameFeatureChoiceGroupsExclusiveSet
        set gameFeatureChoiceGroupsExclusiveSet 1
        set gameFeatureChoiceGroupsExclusiveValue $value
    }
    variable gameFeatureChoiceGroupsMultipleValue {}
    variable gameFeatureChoiceGroupsMultipleSet 0
    proc staticGet_gameFeatureChoiceGroupsMultiple {} {
        variable gameFeatureChoiceGroupsMultipleValue
        variable gameFeatureChoiceGroupsMultipleSet
        if {!$gameFeatureChoiceGroupsMultipleSet} {
            set gameFeatureChoiceGroupsMultipleSet 1
            set gameFeatureChoiceGroupsMultipleValue [::GameFeatureChoiceGroups new]
        }
        return $gameFeatureChoiceGroupsMultipleValue
    }
    proc staticSet_gameFeatureChoiceGroupsMultiple {value} {
        variable gameFeatureChoiceGroupsMultipleValue
        variable gameFeatureChoiceGroupsMultipleSet
        set gameFeatureChoiceGroupsMultipleSet 1
        set gameFeatureChoiceGroupsMultipleValue $value
    }
    proc getExclusiveInstance {} {
        return [::GameFeatureChoiceGroups::staticGet_gameFeatureChoiceGroupsExclusive]
    }
    proc getMultipleInstance {} {
        return [::GameFeatureChoiceGroups::staticGet_gameFeatureChoiceGroupsMultiple]
    }
}


