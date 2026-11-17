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
# package org.allbinary.game.score

oo::class create ::ScoreComparator {
    superclass ::JObject
}

oo::define ::ScoreComparator {
    method initFields_ScoreComparator {} {
        my jset logUtil {}
        my jset isHighestBest false
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {isHighestBest} {
        next
        my initFields_ScoreComparator
        my jset isHighestBest $isHighestBest
    }
    

    method getBestScore {} {
        return [expr {[my jget isHighestBest] ? [::Long::staticGet_MAX_VALUE] : 0}]
    }
    

    method compare {recordOne recordTwo} {
        set byteArrayInputStreamOne [::ByteArrayInputStream new $recordOne]
        set inputStreamOne [::DataInputStream new $byteArrayInputStreamOne]
        set byteArrayInputStreamTwo [::ByteArrayInputStream new $recordTwo]
        set inputStreamTwo [::DataInputStream new $byteArrayInputStreamTwo]
        set scoreOne 0
        set scoreTwo 0
        try {
            $inputStreamOne readUTF
            $inputStreamTwo readUTF
            set scoreOne [$inputStreamOne readLong]
            set scoreTwo [$inputStreamTwo readLong]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "compare" $e
        }
        if {[my jget isHighestBest]} {
            return [my getHighTooLow $scoreOne $scoreTwo]
        } else {
            return [my getLowTooHigh $scoreOne $scoreTwo]
        }
    }
    

    method getHighTooLow {scoreOne scoreTwo} {
        if {[expr {$scoreOne > $scoreTwo}]} {
            return [::RecordComparator::staticGet_PRECEDES]
        } elseif {[expr {$scoreOne < $scoreTwo}]} {
            return [::RecordComparator::staticGet_FOLLOWS]
        } else {
            return [::RecordComparator::staticGet_EQUIVALENT]
        }
    }
    

    method getLowTooHigh {scoreOne scoreTwo} {
        if {[expr {$scoreOne < $scoreTwo}]} {
            return [::RecordComparator::staticGet_PRECEDES]
        } elseif {[expr {$scoreOne > $scoreTwo}]} {
            return [::RecordComparator::staticGet_FOLLOWS]
        } else {
            return [::RecordComparator::staticGet_EQUIVALENT]
        }
    }
}

namespace eval ::ScoreComparator {
}


