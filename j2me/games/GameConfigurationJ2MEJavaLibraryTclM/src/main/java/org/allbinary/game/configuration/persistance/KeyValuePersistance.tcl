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

oo::class create ::KeyValuePersistance {
    superclass ::BasicPersitance
}

oo::define ::KeyValuePersistance {
    method initFields_KeyValuePersistance {} {
        my jset tsUtil {}
        my jset tsUtil [::TsUtil::getInstance]
        return
    }
    

    constructor {recordId} {
        next $recordId
        my initFields_KeyValuePersistance
    }
    

    method loadAll {abeClientInformation} {
        my loadAllSize $abeClientInformation 1
    }
    

    method loadAllSize {abeClientInformation size} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
            set hashtable {}
            set name {}
            set value {}
            set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
            set stringBuffer [::StringMaker new]
            set recordAsBytes {}
            set byteArrayInputStream {}
            set inputStream {}
            while {[$recordEnum hasNextElement]} {
                set id [$recordEnum nextRecordId]
                $stringBuffer delete 0 [$stringBuffer length]
                [my jget logUtil] putF [[[$stringBuffer append [[my jget persistanceStrings] jget LOADING_ID]] appendint $id] toString] [self] [[my jget persistanceStrings] jget LOAD_ALL]
                set recordAsBytes [[my jget tsUtil] getRecord $recordStore $id]
                if {[expr {$recordAsBytes ne {}}]} {
                    set byteArrayInputStream [::ByteArrayInputStream new $recordAsBytes]
                    set inputStream [::DataInputStream new $byteArrayInputStream]
                    set hashtable [::ABHashtable new]
                    for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                        set name [$inputStream readUTF]
                        $inputStream readUTF
                        set value [$inputStream readUTF]
                        $hashtable put $name $value
                    }
                    [my jget valueList] add $hashtable
                    [my jget idList] add [$smallIntegerSingletonFactory getAt $id]
                }
            }
        } on error {e} {
            error $e
        } finally {
            if {[expr {$recordStore ne {}}]} {
                ::PreLogUtil::put [[my jget persistanceStrings] jget CLOSING_RECORDSTORE] [self] [[my jget persistanceStrings] jget LOAD_ALL]
                $recordStore closeRecordStore
            }
        }
    }
    

    method save {abeClientInformation hashtable} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget persistanceStrings] jget SAVING]] append [[::StringUtil::getInstance] toString1 $hashtable]] toString] [self] [[my jget commonStrings] jget SAVE]
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            set byteArrayOutputStream [::ByteArrayOutputStream new]
            set outputStream [::DataOutputStream new $byteArrayOutputStream]
            set value {}
            set commonSeps [::CommonSeps::getInstance]
            set objectArray [[::HashtableUtil::getInstance] getKeysAsArray $hashtable]
            set anyType {}
            set size [$objectArray length]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                $outputStream writeUTF [$objectArray get $index]
                $outputStream writeUTF [$commonSeps jget EQUALS]
                set anyType [$objectArray get $index]
                set value [$hashtable get $anyType]
                $outputStream writeUTF $value
            }
            set tsUtil [::TsUtil::getInstance]
            set savedGameBytes [$tsUtil getByteArray [$byteArrayOutputStream toString]]
            $recordStore addRecord $savedGameBytes 0 [$savedGameBytes length]
        } on error {e} {
            error $e
        } finally {
            if {[expr {$recordStore ne {}}]} {
                ::PreLogUtil::put [[my jget persistanceStrings] jget CLOSING_RECORDSTORE] [self] [[my jget commonStrings] jget SAVE]
                $recordStore closeRecordStore
            }
        }
    }
    

    method get {index} {
        set hashtable [[[my jget valueList] jget objectArray] get $index]
        return $hashtable
    }
}

namespace eval ::KeyValuePersistance {
}


