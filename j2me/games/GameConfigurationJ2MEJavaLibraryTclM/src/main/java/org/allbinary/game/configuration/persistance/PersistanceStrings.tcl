# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

oo::class create ::PersistanceStrings {
    superclass ::JObject
}

oo::define ::PersistanceStrings {
    method initFields_PersistanceStrings {} {
        my jset SAVING {}
        my jset NUMBER_OF_RECORDS {}
        my jset LOADING_ID {}
        my jset LOAD_ALL {}
        my jset DELETING_WITH_ID {}
        my jset CLOSING_RECORDSTORE {}
        my jset NOT_SAVING {}
        my jset ERROR_LOADING {}
        my jset ERROR_LOADING_ID {}
        my jset ID {}
        my jset GAME_ACTION_INPUT {}
        my jset SAVING "Saving: "
        my jset NUMBER_OF_RECORDS "Number of records: "
        my jset LOADING_ID "Loading data with id: "
        my jset LOAD_ALL "loadAll"
        my jset DELETING_WITH_ID "Deleting data with id: "
        my jset CLOSING_RECORDSTORE "Closing RecordStore"
        my jset NOT_SAVING "Not Saving: "
        my jset ERROR_LOADING "Error Loading gameActionInput: "
        my jset ERROR_LOADING_ID "Error Loading id: "
        my jset ID " id: "
        my jset GAME_ACTION_INPUT " GameActionInput: "
        return
    }

    constructor {} {
        next
        my initFields_PersistanceStrings
    }
    
}

namespace eval ::PersistanceStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PersistanceStrings new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::PersistanceStrings::staticGet_instance]
    }
}


