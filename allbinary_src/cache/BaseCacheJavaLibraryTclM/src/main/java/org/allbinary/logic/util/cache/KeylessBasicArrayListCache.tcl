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
# package org.allbinary.logic.util.cache

oo::class create ::KeylessBasicArrayListCache {
    superclass ::IndexedBasicArrayListCache
}

oo::define ::KeylessBasicArrayListCache {
    method initFields_KeylessBasicArrayListCache {} {
        my jset logUtil {}
        my jset basicArrayListUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_KeylessBasicArrayListCache
    }
    

    method get {} {
        try {
            if {[expr {[my jget index] >= [[my jget list] size]}]} {
                my addDefault
            }
            set list [my getAt [my jpostinc index 1]]
            return $list
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget GET] $e
            return [[my jget basicArrayListUtil] getImmutableInstance]
        }
    }
    

    method clear {} {
        next
        set basicArrayList {}
        for {set index [jint [expr {[[my jget list] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set basicArrayList ([[[my jget list] jget objectArray] get $index])
            $basicArrayList clear
        }
    }
    

    method log {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "S: "
        $stringBuffer appendint [[my jget list] size]
        set S_LABEL " s: "
        set basicArrayList {}
        for {set index [jint [expr {[[my jget list] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            $stringBuffer append $S_LABEL
            set basicArrayList ([[[my jget list] jget objectArray] get $index])
            $stringBuffer appendint [$basicArrayList size]
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::KeylessBasicArrayListCache {
}


