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

oo::class create ::HighScoreNamePersistanceSingleton {
    superclass ::JObject
}

oo::define ::HighScoreNamePersistanceSingleton {
    method initFields_HighScoreNamePersistanceSingleton {} {
        my jset logUtil {}
        my jset tsUtil {}
        my jset commonStrings {}
        my jset platformRecordIdUtil {}
        my jset RECORD_ID {}
        my jset name {}
        my jset nameBasicArrayList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset platformRecordIdUtil [::PlatformRecordIdUtil::getInstance]
        my jset RECORD_ID "_SN"
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset nameBasicArrayList [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_HighScoreNamePersistanceSingleton
    }
    
    

    method clear {} {
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method deleteAll {abeClientInformation gameInfo} {
        set size [[my jget nameBasicArrayList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set integer [[[my jget nameBasicArrayList] jget objectArray] get $index]
            my delete $abeClientInformation $gameInfo [$integer intValue]
        }
        my clear
    }
    

    method getRecordId {abeClientInformation} {
        return [[my jget platformRecordIdUtil] getRecordId $abeClientInformation [my jget RECORD_ID]]
    }
    

    method delete {abeClientInformation gameInfo deleteId} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append "Deleting: "] appendint $deleteId] toString] [self] [[my jget commonStrings] jget delete]
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            $recordStore deleteRecord $deleteId
        } on error {e} {
            error $e
        } finally {
            if {[expr {$recordStore ne {}}]} {
                ::PreLogUtil::put "Closing RecordStore" [self] [[my jget commonStrings] jget delete]
                $recordStore closeRecordStore
            }
        }
    }
    

    method getIds {} {
        return [my jget nameBasicArrayList]
    }
    

    method load {abeClientInformation gameInfo} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            if {[expr {[my jget name] eq [[::StringUtil::getInstance] jget EMPTY_STRING]}]} {
                set LOADING_ID "Loading id: "
                set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
                set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
                set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
                set recordAsBytes {}
                set byteArrayInputStream {}
                set inputStream {}
                while {[$recordEnum hasNextElement]} {
                    set id [$recordEnum nextRecordId]
                    [my jget logUtil] putF [[[[::StringMaker new] append $LOADING_ID] appendint $id] toString] [self] [[my jget commonStrings] jget LOAD]
                    set recordAsBytes [[my jget tsUtil] getRecord $recordStore $id]
                    set byteArrayInputStream [::ByteArrayInputStream new $recordAsBytes]
                    set inputStream [::DataInputStream new $byteArrayInputStream]
                    while {[expr {[$inputStream available] > 0}]} {
                        my jset name [$inputStream readUTF]
                    }
                    [my jget nameBasicArrayList] add [$smallIntegerSingletonFactory getAt $id]
                }
            }
        } on error {e} {
            my save $abeClientInformation $gameInfo [my jget name]
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget EXCEPTION_LABEL]] append [[::ExceptionUtil::getInstance] getStackTrace $e]] toString] [self] [[my jget commonStrings] jget LOAD]
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
        return [my jget name]
    }
    

    method save {abeClientInformation gameInfo name} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append "Saving: "] append $name] toString] [self] [[my jget commonStrings] jget SAVE]
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            set byteArrayOutputStream [::ByteArrayOutputStream new]
            set outputStream [::DataOutputStream new $byteArrayOutputStream]
            $outputStream writeUTF $name
            set savedGameBytes [$byteArrayOutputStream toByteArray]
            $recordStore addRecord $savedGameBytes 0 [$savedGameBytes length]
            my jset name $name
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget SAVE] $e
        } finally {
            try {
                if {[expr {$recordStore ne {}}]} {
                    ::PreLogUtil::put "Closing RecordStore" [self] [[my jget commonStrings] jget SAVE]
                    $recordStore closeRecordStore
                }
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget SAVE] $e
            }
        }
    }
}

namespace eval ::HighScoreNamePersistanceSingleton {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::HighScoreNamePersistanceSingleton new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::HighScoreNamePersistanceSingleton::staticGet_SINGLETON]
    }
}


