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
# package org.allbinary.game.input.mapping

#GameInputNoPersistanceLibrary
oo::class create ::PersistentInputMapping {
    superclass ::JObject
}

oo::define ::PersistentInputMapping {
    method initFields_PersistentInputMapping {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset enumerationUtil {}
        my jset inputMapping {}
        my jset inputMappingEventListenerInterface {}
        my jset inputPersistance {}
        my jset inputMappingEvent {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        my jset inputMapping [::InputToGameKeyMapping new]
        my jset inputMappingEventListenerInterface [::NullInputMappingEventListener::staticGet_NULL_INPUT_MAPPING_EVENT_LISTENER]
        
        my jset inputMappingEvent [::InputMappingEvent new [self]]
        return
    }
    
    

    constructor {name} {
        next
        my initFields_PersistentInputMapping
        my jset inputPersistance [::InputPersistance new $name]
    }
    

    method getTotalMapped {} {
        return [[[my getInputMapping] getHashtable] size]
    }
    

    method isDefaultNew {} {
        return false
    }
    

    method getDefault {} {
        return [::InputToGameKeyMapping::getNullInstance]
    }
    

    method setDefault {abeClientInformation} {
        [my getInputMapping] removeAll
        [my getInputMapping] addMapping [my getDefault]
        my save $abeClientInformation
    }
    

    method update {abeClientInformation} {
        [my jget inputPersistance] deleteAll $abeClientInformation
        my save $abeClientInformation
    }
    

    method save {abeClientInformation} {
        [my jget inputPersistance] save $abeClientInformation [[my getInputMapping] getHashtable]
        [my jget inputMappingEvent] setInputToGameKeyMapping [my getInputMapping]
        if {[expr {[my getInputMappingEventListenerInterface] ne {}}]} {
            [my getInputMappingEventListenerInterface] onInputMappingEvent [my jget inputMappingEvent]
        }
    }
    

    method init {abeClientInformation} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget INIT]
        try {
            [my jget inputPersistance] loadAll $abeClientInformation
        } on error {e} {
            ::PreLogUtil::putOE [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget INIT] $e
            [my jget inputPersistance] deleteRecoreStore $abeClientInformation
            my setDefault $abeClientInformation
            [my jget inputPersistance] loadAll $abeClientInformation
        }
        set list [[my jget inputPersistance] getList]
        set totalMappedTo 0
        set size [$list size]
        set hashtable {}
        set enumeration {}
        set mappedToInput {}
        set gameActionInput {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set hashtable [[$list jget objectArray] get $index]
            set enumeration [$hashtable keys]
            while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
                set mappedToInput [[my jget enumerationUtil] nextElement $enumeration]
                set gameActionInput [$hashtable get $mappedToInput]
                jpostincr totalMappedTo 1
                [my getInputMapping] add $gameActionInput $mappedToInput
            }
        }
        set stringBuffer [::StringMaker new]
        $stringBuffer append "End - Total Loaded Keys Mapped: "
        $stringBuffer appendint [my getTotalMapped]
        $stringBuffer append " to: "
        $stringBuffer appendint $totalMappedTo
        [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget INIT]
    }
    

    method setInputMappingEventListenerInterface {inputMappingEventListenerInterface} {
        my jset inputMappingEventListenerInterface $inputMappingEventListenerInterface
    }
    

    method getInputMappingEventListenerInterface {} {
        return [my jget inputMappingEventListenerInterface]
    }
    

    method getInputMapping {} {
        return [my jget inputMapping]
    }
    

    method isDelete {input} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method isSystemInput {input} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
}

namespace eval ::PersistentInputMapping {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::PersistentInputMapping::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::PersistentInputMapping::staticSet_instance [::PersistentInputMapping new [[::GamePersistanceStrings::getInstance] jget SAVED_INPUT_CONFIGURATION_RECORD_ID]]
        }
        return [::PersistentInputMapping::staticGet_instance]
    }
}


