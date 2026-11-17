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
# package org.allbinary.game.identification

oo::class create ::BasicGroupFactory {
    superclass ::JObject
}

oo::define ::BasicGroupFactory {
    method initFields_BasicGroupFactory {} {
        my jset NAME {}
        my jset NO_SUCH_GROUP {}
        my jset GOOD {}
        my jset ENEMY {}
        my jset ENEMY_ON_LEVEL {}
        my jset NONE {}
        my jset GOOD_ARRAY {}
        my jset ENEMY_ARRAY {}
        my jset ENEMY_ON_LEVEL_ARRAY {}
        my jset NONE_ARRAY {}
        my jset NAME "GROUP_NAME"
        my jset NO_SUCH_GROUP "No Such Group: "
        my jset GOOD [::Group new "Good Guys" [jshort 0]]
        my jset ENEMY [::Group new "Bad Guys" [jshort 1]]
        my jset ENEMY_ON_LEVEL [::Group new "Bad Guys on Level" [jshort 2]]
        my jset NONE [::Group new "Not On A Team" [jshort 3]]
        my jset GOOD_ARRAY [jarrayfrom [list [my jget GOOD]]]
        my jset ENEMY_ARRAY [jarrayfrom [list [my jget ENEMY]]]
        my jset ENEMY_ON_LEVEL_ARRAY [jarrayfrom [list [my jget ENEMY] [my jget ENEMY_ON_LEVEL]]]
        my jset NONE_ARRAY [jarrayfrom [list [my jget NONE]]]
        return
    }

    constructor {} {
        next
        my initFields_BasicGroupFactory
    }
    
}

namespace eval ::BasicGroupFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::BasicGroupFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::BasicGroupFactory::staticSet_instance [::BasicGroupFactory new]
        }
        return [::BasicGroupFactory::staticGet_instance]
    }
}


