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
# package org.allbinary.media.audio

oo::class create ::PlayerQueue {
    superclass ::JObject
}

oo::define ::PlayerQueue {
    method initFields_PlayerQueue {} {
        my jset commonStrings {}
        my jset list {}
        my jset max 0
        my jset commonStrings [::CommonStrings::getInstance]
        my jset list [::BasicArrayListD new]
        
        return
    }
    

    constructor {max} {
        next
        my initFields_PlayerQueue
        my jset max $max
    }
    

    method add {sound} {
        try {
            if {[expr {![[my jget list] contains $sound]}]} {
                [my jget list] add $sound
            }
        } on error {e} {
            ::PreLogUtil::put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget ADD]
        }
    }
    

    method process {} {
        set sound [::NoSound::getInstance]
        try {
            set played false
            if {[expr {[[my jget list] size] > 0}]} {
                set sound [[my jget list] removeAt 0]
                if {[expr {$sound ne {}}]} {
                    [$sound getPlayerP] start
                }
                while {[expr {[[my jget list] size] > [my jget max]}]} {
                    [my jget list] removeAt 0
                }
                set played true
            }
            return $played
        } on error {e} {
            set resource [[::StringUtil::getInstance] jget EMPTY_STRING]
            if {[expr {$sound ne {}}]} {
                set resource [$sound getResource]
            }
            ::PreLogUtil::put [[[[::StringMaker new] append [[my jget commonStrings] jget EXCEPTION_LABEL]] append $resource] toString] [self] [[my jget commonStrings] jget PROCESS]
            return false
        }
    }
    

    method clear {} {
        [my jget list] clear
    }
    

    method toString {} {
        return [[[[::StringMaker new] append [::PlayerQueue::staticGet_TOTAL]] appendint [[my jget list] size]] toString]
    }
}

namespace eval ::PlayerQueue {
    variable TOTALValue {}
    variable TOTALSet 0
    proc staticGet_TOTAL {} {
        variable TOTALValue
        variable TOTALSet
        if {!$TOTALSet} {
            set TOTALSet 1
            set TOTALValue "Sounds In Queue: "
        }
        return $TOTALValue
    }
    proc staticSet_TOTAL {value} {
        variable TOTALValue
        variable TOTALSet
        set TOTALSet 1
        set TOTALValue $value
    }
}


