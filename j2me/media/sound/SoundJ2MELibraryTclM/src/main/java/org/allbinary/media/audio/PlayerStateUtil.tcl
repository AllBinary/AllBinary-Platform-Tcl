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
# package org.allbinary.media.audio

oo::class create ::PlayerStateUtil {
    superclass ::JObject
}

oo::define ::PlayerStateUtil {
    method initFields_PlayerStateUtil {} {
        my jset commonStrings {}
        my jset UNREALIZED {}
        my jset REALIZED {}
        my jset PREFETCHED {}
        my jset STARTED {}
        my jset CLOSED {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset UNREALIZED "UNREALIZED"
        my jset REALIZED "REALIZED"
        my jset PREFETCHED "PREFETCHED"
        my jset STARTED "STARTED"
        my jset CLOSED "CLOSED"
        return
    }

    constructor {} {
        next
        my initFields_PlayerStateUtil
    }
    
    

    method convert {state} {
        if {[expr {$state == [::Player::staticGet_UNREALIZED]}]} {
            return [my jget UNREALIZED]
        } elseif {[expr {$state == [::Player::staticGet_REALIZED]}]} {
            return [my jget REALIZED]
        } elseif {[expr {$state == [::Player::staticGet_PREFETCHED]}]} {
            return [my jget PREFETCHED]
        } elseif {[expr {$state == [::Player::staticGet_STARTED]}]} {
            return [my jget STARTED]
        } elseif {[expr {$state == [::Player::staticGet_CLOSED]}]} {
            return [my jget CLOSED]
        }
        return [[my jget commonStrings] jget UNKNOWN]
    }
}

namespace eval ::PlayerStateUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PlayerStateUtil new]
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
        return [::PlayerStateUtil::staticGet_instance]
    }
}


