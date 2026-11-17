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
# package org.allbinary.game.input

#GameInputNoPersistanceLibrary
oo::class create ::InputPersistance {
    superclass ::BasicPersitance
}

oo::define ::InputPersistance {
    method initFields_InputPersistance {} {
        my jset hashtableUtil {}
        my jset hashtableUtil [::HashtableUtil::getInstance]
        return
    }
    

    constructor {name} {
        next $name
        my initFields_InputPersistance
    }
    

    method loadAll {abeClientInformation} {
        set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
        set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
        set hashtable {}
        set stringBuffer [::StringMaker new]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        set id 0
        while {[$recordEnum hasNextElement]} {
            set id [$recordEnum nextRecordId]
            $stringBuffer delete 0 [$stringBuffer length]
            [my jget logUtil] putF [[[$stringBuffer append [[my jget persistanceStrings] jget LOADING_ID]] appendint $id] toString] [self] [[my jget persistanceStrings] jget LOAD_ALL]
            set hashtable [[::StdUtil::getInstance] createHashtable]
            [my jget valueList] add $hashtable
            [my jget idList] add [$smallIntegerSingletonFactory getAt $id]
        }
        $recordStore closeRecordStore
    }
    

    method save {abeClientInformation hashtable} {
        ::PreLogUtil::put [[[[::StringMaker new] append [[my jget persistanceStrings] jget NOT_SAVING]] append [[::StringUtil::getInstance] toString1 $hashtable]] toString] [self] [[my jget commonStrings] jget SAVE]
        set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
        set gameActionInput {}
        set list {}
        set input {}
        set inputObjectArray [[my jget hashtableUtil] getKeysAsArray $hashtable]
        set size [$inputObjectArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameActionInput [$inputObjectArray get $index]
            set list [$hashtable get [$inputObjectArray get $index]]
            for {set index2 0} {[expr {$index2 < [$list size]}]} {jpostincr index2 1} {
                set input [$list get $index2]
            }
        }
        $recordStore closeRecordStore
    }
}

namespace eval ::InputPersistance {
}


