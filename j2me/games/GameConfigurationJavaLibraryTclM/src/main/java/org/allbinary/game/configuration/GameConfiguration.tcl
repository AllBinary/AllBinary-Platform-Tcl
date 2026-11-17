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
# package org.allbinary.game.configuration

oo::class create ::GameConfiguration {
    superclass ::JObject
}

oo::define ::GameConfiguration {
    method initFields_GameConfiguration {} {
        my jset name {}
        my jset defaultValue {}
        my jset value {}
        my jset minValue {}
        my jset maxValue {}
        my jset modifiable {}
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset defaultValue [[::SmallIntegerSingletonFactory::getInstance] getAt 0]
        my jset value [::GameConfiguration::staticGet_MIN_VALUE]
        my jset minValue [my jget defaultValue]
        my jset maxValue [my jget defaultValue]
        my jset modifiable [[::BooleanFactory::getInstance] jget TRUE]
        return
    }
    

    constructor {name defaultValue minValue maxValue} {
        next
        my initFields_GameConfiguration
        my setName $name
        my setDefaultValue $defaultValue
        my jset value [my getDefaultValue]
        my setMinValue $minValue
        my setMaxValue $maxValue
        [[::GameConfigurationSingleton::getInstance] getHashtable] put [my getName] [self]
    }
    

    method setValue {value} {
        if {[expr {[my jget value] ne $value}]} {
            set oldValue [my jget value]
            my jset value $value
            [::GameFeatureEventHandler::getInstance] fireEvent [::GameFeatureEvent new [self] [[[[[[[::StringMaker new] append [my jget name]] append " value: from: "] appendint [jint [$oldValue intValue]]] append " to "] appendint [jint [[my jget value] intValue]]] toString]]
        }
    }
    

    method getValue {} {
        return [my jget value]
    }
    

    method setMaxValue {maxValue} {
        my jset maxValue $maxValue
    }
    

    method getMaxValue {} {
        return [my jget maxValue]
    }
    

    method setMinValue {minValue} {
        my jset minValue $minValue
    }
    

    method getMinValue {} {
        return [my jget minValue]
    }
    

    method setName {name} {
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method setDefaultValue {defaultValue} {
        my jset defaultValue $defaultValue
    }
    

    method getDefaultValue {} {
        return [my jget defaultValue]
    }
    

    method setDefault {} {
        my setValue [my getDefaultValue]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Name: "
        $stringBuffer append [my jget name]
        $stringBuffer append " Min: "
        $stringBuffer appendint [jint [[my getMinValue] intValue]]
        $stringBuffer append " Max: "
        $stringBuffer appendint [jint [[my getMaxValue] intValue]]
        $stringBuffer append " Value: "
        $stringBuffer appendint [jint [[my getValue] intValue]]
        $stringBuffer append " Default: "
        $stringBuffer appendint [jint [[my getDefaultValue] intValue]]
        $stringBuffer append " Modifiable: "
        $stringBuffer appendboolean [[my isModifiable] booleanValue]
        return [$stringBuffer toString]
    }
    

    method setModifiable {modifiable} {
        my jset modifiable $modifiable
    }
    

    method isModifiable {} {
        return [my jget modifiable]
    }
}

namespace eval ::GameConfiguration {
    variable MIN_VALUEValue {}
    variable MIN_VALUESet 0
    proc staticGet_MIN_VALUE {} {
        variable MIN_VALUEValue
        variable MIN_VALUESet
        if {!$MIN_VALUESet} {
            set MIN_VALUESet 1
            set MIN_VALUEValue [::Integer::staticGet_MIN_VALUE]
        }
        return $MIN_VALUEValue
    }
    proc staticSet_MIN_VALUE {value} {
        variable MIN_VALUEValue
        variable MIN_VALUESet
        set MIN_VALUESet 1
        set MIN_VALUEValue $value
    }
}


