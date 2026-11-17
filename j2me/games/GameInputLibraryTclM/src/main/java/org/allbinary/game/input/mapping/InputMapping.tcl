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

oo::class create ::InputMapping {
    superclass ::JObject
}

oo::define ::InputMapping {
    method initFields_InputMapping {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset hashtable {}
        my jset mappedList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        my jset mappedList [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_InputMapping
    }
    

    method getTotalMapped {} {
        return [[my jget hashtable] size]
    }
    

    method isDefaultNew {} {
        return false
    }
    

    method getDefault {} {
        return [::InputToGameKeyMapping::getNullInstance]
    }
    

    method removeAll {} {
        [my jget hashtable] clear
        [my jget mappedList] clear
    }
    

    method remove {input mappedToInput} {
        set stringBuffer [::StringMaker new]
        set stringUtil [::StringUtil::getInstance]
        $stringBuffer append [[::CommonLabels::getInstance] jget START_LABEL]
        $stringBuffer append [$stringUtil toString1 $input]
        $stringBuffer append " == "
        $stringBuffer append [$stringUtil toString1 $mappedToInput]
        [my jget logUtil] putF [$stringBuffer toString] [self] "InputMapping::remove"
        set list [my getMappedInput $input]
        if {[$list contains $mappedToInput]} {
            $list remove $mappedToInput
            [my jget mappedList] remove $mappedToInput
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append "Removed: "
            $stringBuffer append [$stringUtil toString1 $input]
            $stringBuffer append " == "
            $stringBuffer append [$stringUtil toString1 $mappedToInput]
            [my jget logUtil] putF [$stringBuffer toString] [self] "InputMapping::remove"
        } else {
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append "Not Deleted: "
            $stringBuffer append [$stringUtil toString1 $input]
            $stringBuffer append " == "
            $stringBuffer append [$stringUtil toString1 $mappedToInput]
            [my jget logUtil] putF [$stringBuffer toString] [self] "InputMapping::remove"
        }
    }
    

    method addMapping {inputToGameKeyMapping} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method add {input mappedToInput} {
        set list [my getMappedInput $input]
        if {[expr {![$list contains $mappedToInput]}]} {
            $list add $mappedToInput
            [my jget mappedList] add $mappedToInput
        }
    }
    

    method isMapped {input} {
        return [[my jget mappedList] contains $input]
    }
    

    method getMappedInput {id} {
        set mappingInputCanBeNullList [[my jget hashtable] get $id]
        if {[expr {$mappingInputCanBeNullList eq {}}]} {
            set list [::BasicArrayListD new]
            [my jget hashtable] put $id $list
            return $list
        }
        return $mappingInputCanBeNullList
    }
    

    method getHashtable {} {
        return [my jget hashtable]
    }
}

namespace eval ::InputMapping {
}


