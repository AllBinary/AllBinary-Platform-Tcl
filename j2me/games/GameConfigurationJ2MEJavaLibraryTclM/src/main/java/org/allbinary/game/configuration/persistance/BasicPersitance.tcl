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
# package org.allbinary.game.configuration.persistance

oo::class create ::BasicPersitance {
    superclass ::JObject
}

oo::define ::BasicPersitance {
    method initFields_BasicPersitance {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset persistanceStrings {}
        my jset platformRecordIdUtil {}
        my jset recordId {}
        my jset valueList {}
        my jset idList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset persistanceStrings [::PersistanceStrings::getInstance]
        my jset platformRecordIdUtil [::PlatformRecordIdUtil::getInstance]
        
        my jset valueList [::BasicArrayListD new]
        my jset idList [::BasicArrayListD new]
        return
    }
    

    constructor {recordId} {
        next
        my initFields_BasicPersitance
        my jset recordId $recordId
    }
    

    method deleteRecoreStore {abeClientInformation} {
        ::RecordStore::deleteRecordStore [my getRecordId $abeClientInformation]
    }
    

    method deleteAll {abeClientInformation} {
        set size [[my jget idList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set integer [[[my jget idList] jget objectArray] get $index]
            my delete $abeClientInformation [$integer intValue]
        }
        my clear
    }
    

    method delete {abeClientInformation deleteId} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget persistanceStrings] jget DELETING_WITH_ID]] appendint $deleteId] toString] [self] [[my jget commonStrings] jget delete]
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            $recordStore deleteRecord $deleteId
        } on error {e} {
            error $e
        } finally {
            if {[expr {$recordStore ne {}}]} {
                ::PreLogUtil::put [[my jget persistanceStrings] jget CLOSING_RECORDSTORE] [self] [[my jget commonStrings] jget delete]
                $recordStore closeRecordStore
            }
        }
    }
    

    method getRecordId {abeClientInformation} {
        return [[my jget platformRecordIdUtil] getRecordId $abeClientInformation [my jget recordId]]
    }
    

    method getList {} {
        return [my jget valueList]
    }
    

    method getIds {} {
        return [my jget idList]
    }
    

    method clear {} {
        [my jget valueList] clear
        [my jget idList] clear
    }
}

namespace eval ::BasicPersitance {
}


