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

oo::class create ::RecordStoreHighScores {
    superclass ::HighScores
}

oo::define ::RecordStoreHighScores {
    method initFields_RecordStoreHighScores {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset platformRecordIdUtil {}
        my jset tsUtil {}
        my jset RECORD_ID {}
        my jset MAXHIGHSCORES 0
        my jset gameInfo {}
        my jset abeClientInformation {}
        my jset recordComparatorInterface {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset platformRecordIdUtil [::PlatformRecordIdUtil::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset RECORD_ID "_HS"
        my jset MAXHIGHSCORES 100
        
        
        
        return
    }
    

    constructor {abeClientInformation gameInfo name heading columnTwoHeading recordComparatorInterface} {
        next $name $heading $columnTwoHeading
        my initFields_RecordStoreHighScores
        my jset abeClientInformation $abeClientInformation
        my jset gameInfo $gameInfo
        my jset recordComparatorInterface $recordComparatorInterface
        my load
    }
    
    

    method getRecordId {abeClientInformation} {
        return [[my jget platformRecordIdUtil] getRecordId $abeClientInformation [[[[[::StringMaker new] append [[::CommonSeps::getInstance] jget UNDERSCORE]] append [my getName]] append [my jget RECORD_ID]] toString]]
    }
    

    method addHighScore {newHighScore} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append "Adding HighScore: "] appendlong [$newHighScore getScore]] toString] [self] [[my jget commonStrings] jget ADD]
            if {[my isTooManyHighScores]} {
                [my jget logUtil] putF "Removing Lowest Score" [self] [[my jget commonStrings] jget ADD]
                my removeLowestHighScore
            }
            set recordStore [::RecordStore::openRecordStore [my getRecordId [my jget abeClientInformation]] true]
            set highScoreBytes [$newHighScore getAsBytes]
            set recordId [$recordStore addRecord $highScoreBytes 0 [$highScoreBytes length]]
            my load
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget ADD] $e
        } finally {
            try {
                if {[expr {$recordStore ne {}}]} {
                    ::PreLogUtil::put "Closing RecordStore" [self] [[my jget commonStrings] jget ADD]
                    $recordStore closeRecordStore
                }
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget ADD] $e
            }
        }
    }
    

    method removeLowestHighScore {} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            set recordStore [::RecordStore::openRecordStore [my getRecordId [my jget abeClientInformation]] true]
            set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
            set scoreComparator ([my jget recordComparatorInterface])
            set bestHighScore [::HighScore new [expr {-1}] "none" [::GameInfo::staticGet_NONE] [$scoreComparator getBestScore]]
            set recordAsBytes {}
            set byteArrayInputStream {}
            set inputStream {}
            while {[$recordEnum hasNextElement]} {
                set id [$recordEnum nextRecordId]
                set recordAsBytes [[my jget tsUtil] getRecord $recordStore $id]
                if {[expr {$recordAsBytes ne {}}]} {
                    set byteArrayInputStream [::ByteArrayInputStream new $recordAsBytes]
                    set inputStream [::DataInputStream new $byteArrayInputStream]
                    set name [$inputStream readUTF]
                    set nextScore [$inputStream readLong]
                    set nextCurrentHighScore [::HighScore new $id $name [::GameInfo::staticGet_NONE] $nextScore]
                    if {[expr {[[my jget recordComparatorInterface] compare [$nextCurrentHighScore getAsBytes] [$bestHighScore getAsBytes]] == [::RecordComparator::staticGet_FOLLOWS]}]} {
                        set bestHighScore $nextCurrentHighScore
                    }
                }
            }
            if {[expr {[$bestHighScore getId] != [expr {-1}]}]} {
                [my jget logUtil] putF [[[[::StringMaker new] append "Removing Lowest HighScore: "] appendlong [$bestHighScore getScore]] toString] [self] [[my jget commonStrings] jget LOAD]
                $recordStore deleteRecord [$bestHighScore getId]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "removeLowestHighScore" $e
        } finally {
            try {
                if {[expr {$recordStore ne {}}]} {
                    ::PreLogUtil::put "Closing RecordStore" [self] "removeLowestHighScore"
                    $recordStore closeRecordStore
                }
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "removeLowestHighScore" $e
            }
        }
    }
    

    method load {} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            set recordStore [::RecordStore::openRecordStore [my getRecordId [my jget abeClientInformation]] true]
            my setList [::BasicArrayListD new]
            set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
            set recordAsBytes {}
            set byteArrayInputStream {}
            set inputStream {}
            while {[$recordEnum hasNextElement]} {
                set id [$recordEnum nextRecordId]
                set recordAsBytes [[my jget tsUtil] getRecord $recordStore $id]
                if {[expr {$recordAsBytes ne {}}]} {
                    set byteArrayInputStream [::ByteArrayInputStream new $recordAsBytes]
                    set inputStream [::DataInputStream new $byteArrayInputStream]
                    try {
                        set name [$inputStream readUTF]
                        set score [$inputStream readLong]
                        set newHighScore [::HighScore new $id $name [::GameInfo::staticGet_NONE] $score]
                        set list [my getList]
                        set size [$list size]
                        set lastIndex $size
                        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                            set highScore [[$list jget objectArray] get $index]
                            if {[expr {[[my jget recordComparatorInterface] compare [$newHighScore getAsBytes] [$highScore getAsBytes]] == [::RecordComparator::staticGet_PRECEDES]}]} {
                                set lastIndex $index
                                break
                            }
                        }
                        $list addAt $lastIndex $newHighScore
                    } on error {e} {
                        [my jget logUtil] put "EOF" [self] [[my jget commonStrings] jget LOAD] $e
                        error $e
                    }
                }
            }
        } on error {e} {
            [my jget logUtil] put "No High Scores" [self] [[my jget commonStrings] jget LOAD] $e
        } finally {
            try {
                if {[expr {$recordStore ne {}}]} {
                    ::PreLogUtil::put "Closing RecordStore" [self] [[my jget commonStrings] jget LOAD]
                    $recordStore closeRecordStore
                }
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget LOAD] $e
            }
        }
    }
    

    method isTooManyHighScores {} {
        if {[expr {[expr {[my getList] ne {}}] && [expr {[[my getList] size] < [my jget MAXHIGHSCORES]}]}]} {
            return false
        } else {
            [my jget logUtil] putF [[[[::StringMaker new] append "HighScores RecordStore Max Reached: "] appendint [my jget MAXHIGHSCORES]] toString] [self] "isTooManyHighScores"
            return true
        }
    }
    

    method isBestScore {newHighScore} {
        try {
            if {[expr {![my isTooManyHighScores]}]} {
                [my jget logUtil] putF "Slot Available for a High Score" [self] "isBestScore"
                return true
            } else {
                set list [my getList]
                set size [$list size]
                for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                    set highScore [[$list jget objectArray] get $index]
                    if {[expr {[[my jget recordComparatorInterface] compare [$newHighScore getAsBytes] [$highScore getAsBytes]] == [::RecordComparator::staticGet_FOLLOWS]}]} {
                        [my jget logUtil] putF "Obtained a High Score" [self] "isBestScore"
                        return true
                    }
                }
            }
            [my jget logUtil] putF "Not a High Score" [self] "isBestScore"
            return false
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget ADD] $e
            error $e
        }
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [next]
        set list [my getList]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set highScore [[$list jget objectArray] get $index]
            $stringBuffer append [$highScore getScoreString]
            $stringBuffer append [[::CommonSeps::getInstance] jget COMMA_SEP]
        }
        return [$stringBuffer toString]
    }
}

namespace eval ::RecordStoreHighScores {
    variable hashTableValue {}
    variable hashTableSet 0
    proc staticGet_hashTable {} {
        variable hashTableValue
        variable hashTableSet
        if {!$hashTableSet} {
            set hashTableSet 1
            set hashTableValue [[::StdUtil::getInstance] createHashtable]
        }
        return $hashTableValue
    }
    proc staticSet_hashTable {value} {
        variable hashTableValue
        variable hashTableSet
        set hashTableSet 1
        set hashTableValue $value
    }
    proc getInstance {abeClientInformation gameInfo highScoreName heading columnTwoHeading recordComparatorInterface} {
        set highScoresCanBeNull [[::RecordStoreHighScores::staticGet_hashTable] get $highScoreName]
        if {[expr {$highScoresCanBeNull eq {}}]} {
            set highScores [::RecordStoreHighScores new $abeClientInformation $gameInfo $highScoreName $heading $columnTwoHeading $recordComparatorInterface]
            [::RecordStoreHighScores::staticGet_hashTable] put [$highScores getName] $highScores
            return $highScores
        }
        return $highScoresCanBeNull
    }
}


