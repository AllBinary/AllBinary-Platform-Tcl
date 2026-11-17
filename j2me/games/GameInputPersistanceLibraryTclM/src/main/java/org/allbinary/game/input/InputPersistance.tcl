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

#GameInputPersistanceLibrary
oo::class create ::InputPersistance {
    superclass ::BasicPersitance
}

oo::define ::InputPersistance {
    method initFields_InputPersistance {} {
        my jset tsUtil {}
        my jset hashtableUtil {}
        my jset tsUtil [::TsUtil::getInstance]
        my jset hashtableUtil [::HashtableUtil::getInstance]
        return
    }
    

    constructor {name} {
        next $name
        my initFields_InputPersistance
    }
    

    method loadAll {abeClientInformation} {
        set recordStore [::NullRecordStore::staticGet_NULL_RECORD_STORE]
        try {
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            set recordEnum [$recordStore enumerateRecords [::NullRecordFilter::staticGet_NULL_RECORD_FILTER] [::NullRecordComparator::staticGet_NULL_RECORD_COMPARATOR] true]
            set gameActionInputId 0
            set inputId 0
            set gameActionInput {}
            set input {}
            set hashtable {}
            set gameKeyFactory [::GameKeyMappingFactory::getInstance]
            set stringBuffer [::StringMaker new]
            set inputFactory [::InputFactory::getInstance]
            set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
            set stdUtil [::StdUtil::getInstance]
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
                    set hashtable [$stdUtil createHashtable]
                    set value 0
                    while {[expr {[$inputStream available] > 0}]} {
                        set gameActionInputIdAsString [$inputStream readUTF]
                        set value [string trim $gameActionInputIdAsString]
                        set gameActionInputId $value
                        $inputStream readUTF
                        set value [string trim [$inputStream readUTF]]
                        set inputId $value
                        set gameActionInput [$gameKeyFactory getGameKey [jint $gameActionInputId]]
                        set input [$inputFactory getInstanceById [jint $inputId]]
                        if {[expr {[expr {$input eq [$inputFactory jget NO_INPUT]}] || [expr {$gameActionInput eq {}}]}]} {
                            $stringBuffer delete 0 [$stringBuffer length]
                            if {[expr {$input eq [$inputFactory jget NO_INPUT]}]} {
                                $stringBuffer append [[my jget persistanceStrings] jget ERROR_LOADING_ID]
                                $stringBuffer appendlong $inputId
                                $stringBuffer append [[my jget persistanceStrings] jget GAME_ACTION_INPUT]
                                $stringBuffer appendlong $gameActionInputId
                                ::PreLogUtil::put [$stringBuffer toString] [self] [[my jget persistanceStrings] jget LOAD_ALL]
                            }
                            if {[expr {$gameActionInput eq {}}]} {
                                $stringBuffer delete 0 [$stringBuffer length]
                                $stringBuffer append [[my jget persistanceStrings] jget ERROR_LOADING]
                                $stringBuffer appendlong $gameActionInputId
                                $stringBuffer append [[my jget persistanceStrings] jget ID]
                                $stringBuffer appendlong $inputId
                                ::PreLogUtil::put [$stringBuffer toString] [self] [[my jget persistanceStrings] jget LOAD_ALL]
                            }
                        } else {
                        }
                        $hashtable put $input $gameActionInput
                    }
                    [my jget valueList] add $hashtable
                    [my jget idList] add [$smallIntegerSingletonFactory getAt $id]
                } else {
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
            set stringBuffer [::StringMaker new]
            ::PreLogUtil::put [[[$stringBuffer append [[my jget persistanceStrings] jget SAVING]] append [[::StringUtil::getInstance] toString1 $hashtable]] toString] [self] [[my jget commonStrings] jget SAVE]
            set recordStore [::RecordStore::openRecordStore [my getRecordId $abeClientInformation] true]
            set byteArrayOutputStream [::ByteArrayOutputStream new]
            set outputStream [::DataOutputStream new $byteArrayOutputStream]
            set gameActionInput {}
            set list {}
            set input {}
            set savedGameBytes {}
            set commonSeps [::CommonSeps::getInstance]
            set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
            set inputObjectArray [[my jget hashtableUtil] getKeysAsArray $hashtable]
            set size [$inputObjectArray length]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set gameActionInput [$inputObjectArray get $index]
                set list [$hashtable get [$inputObjectArray get $index]]
                for {set index2 0} {[expr {$index2 < [$list size]}]} {jpostincr index2 1} {
                    set gameActionInputIdAsString [[$smallIntegerSingletonFactory getAt [$gameActionInput getId]] toString]
                    $outputStream writeUTF $gameActionInputIdAsString
                    $outputStream writeUTF [$commonSeps jget EQUALS]
                    set input [[$list jget objectArray] get $index2]
                    set inputIdAsString [[$smallIntegerSingletonFactory getAt [$input getId]] toString]
                    $outputStream writeUTF $inputIdAsString
                }
            }
            set savedGameBytes [$byteArrayOutputStream toByteArray]
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
}

namespace eval ::InputPersistance {
}


