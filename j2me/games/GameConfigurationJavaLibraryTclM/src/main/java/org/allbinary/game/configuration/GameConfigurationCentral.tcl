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

oo::class create ::GameConfigurationCentral {
    superclass ::JObject
}

oo::define ::GameConfigurationCentral {
    method initFields_GameConfigurationCentral {} {
        my jset logUtil {}
        my jset SCALE {}
        my jset ORIENTATION {}
        my jset SENSOR_UPDATE_RATE {}
        my jset VIBRATION {}
        my jset CHALLENGE_LEVEL {}
        my jset COLLIDE_DAMAGE {}
        my jset DURABILITY_CHALLENGE_LEVEL {}
        my jset SPEED_CHALLENGE_LEVEL {}
        my jset ATTACK_CHALLENGE_LEVEL {}
        my jset CONTROL_LEVEL {}
        my jset PLAYER_INPUT_WAIT {}
        my jset SPEED {}
        my jset SOUND_VOLUME {}
        my jset MAX_GAME_OBJECTS {}
        my jset MAX_LAYERS {}
        my jset gameControlFidelity 0
        my jset logUtil [::LogUtil::getInstance]
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        my jset gameControlFidelity 36
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameConfigurationCentral
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        my jset SCALE [::GameConfiguration new "Scale" [$smallIntegerSingletonFactory getAt 2] [$smallIntegerSingletonFactory getAt 2] [$smallIntegerSingletonFactory getAt 3]]
        my jset ORIENTATION [::GameConfiguration new "Orientation" [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 8]]
        my jset SENSOR_UPDATE_RATE [::GameConfiguration new "Sensor Update Rate" [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 3]]
        my jset VIBRATION [::GameConfiguration new "Vibration" [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 3]]
        my jset CHALLENGE_LEVEL [::GameConfiguration new "Global Challenge Level" [$smallIntegerSingletonFactory getAt 3] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset COLLIDE_DAMAGE [::GameConfiguration new "Collide Damage Challenge Level" [$smallIntegerSingletonFactory getAt 3] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset DURABILITY_CHALLENGE_LEVEL [::GameConfiguration new "Enemy Durability Challenge Level" [$smallIntegerSingletonFactory getAt 3] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset SPEED_CHALLENGE_LEVEL [::GameConfiguration new "Enemy Speed Challenge Level" [$smallIntegerSingletonFactory getAt 3] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset ATTACK_CHALLENGE_LEVEL [::GameConfiguration new "Enemy Attack Challenge Level" [$smallIntegerSingletonFactory getAt 3] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset CONTROL_LEVEL [::GameConfiguration new "Control Fidelity" [$smallIntegerSingletonFactory getAt 5] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset PLAYER_INPUT_WAIT [::GameConfiguration new "Input Wait" [$smallIntegerSingletonFactory getAt 5] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset SPEED [::GameConfiguration new "Game Speed (Device Specific)" [$smallIntegerSingletonFactory getAt 5] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 10]]
        my jset SOUND_VOLUME [::GameConfiguration new "Sound Volume" [$smallIntegerSingletonFactory getAt 6] [$smallIntegerSingletonFactory getAt 0] [$smallIntegerSingletonFactory getAt 10]]
        my jset MAX_GAME_OBJECTS [::GameConfiguration new "Max Game Objects" [$smallIntegerSingletonFactory getAt 20] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 50]]
        my jset MAX_LAYERS [::GameConfiguration new "Max Layers" [$smallIntegerSingletonFactory getAt 20] [$smallIntegerSingletonFactory getAt 1] [$smallIntegerSingletonFactory getAt 50]]
    }
    

    method load {abeClientInformation} {
        set commonStrings [::CommonStrings::getInstance]
        try {
            set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
            set keyValuePersistance [::GameConfigurationPersistanceSingleton::getInstance]
            $keyValuePersistance clear
            $keyValuePersistance loadAll $abeClientInformation
            set list [$keyValuePersistance getIds]
            if {[expr {[$list size] > 0}]} {
                set hashtable [$keyValuePersistance get 0]
                set anyType [[my jget SCALE] getName]
                set value [$hashtable get $anyType]
                [my jget SCALE] setValue [$smallIntegerSingletonFactory getAt [[jstr $value] intValue]]
            } else {
                [my jget logUtil] putF "No Game Configuration To Load" [self] [$commonStrings jget LOAD]
            }
        } on error {e} {
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget LOAD] $e
        }
    }
    

    method setGameControlFidelity {gameControlFidelity} {
        my jset gameControlFidelity $gameControlFidelity
    }
    

    method getGameControlFidelity {} {
        return [my jget gameControlFidelity]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set commonStrings [::CommonSeps::getInstance]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget SCALE] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget SCALE] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget ORIENTATION] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget ORIENTATION] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget SENSOR_UPDATE_RATE] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget SENSOR_UPDATE_RATE] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget VIBRATION] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget VIBRATION] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget CHALLENGE_LEVEL] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget CHALLENGE_LEVEL] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget COLLIDE_DAMAGE] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget COLLIDE_DAMAGE] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget DURABILITY_CHALLENGE_LEVEL] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget DURABILITY_CHALLENGE_LEVEL] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget SPEED_CHALLENGE_LEVEL] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget SPEED_CHALLENGE_LEVEL] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget ATTACK_CHALLENGE_LEVEL] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget ATTACK_CHALLENGE_LEVEL] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget CONTROL_LEVEL] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget CONTROL_LEVEL] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget SPEED] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget SPEED] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget MAX_GAME_OBJECTS] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget MAX_GAME_OBJECTS] getValue] intValue]]
        $stringBuffer append [$commonStrings jget COMMA_SEP]
        $stringBuffer append [[my jget MAX_LAYERS] getName]
        $stringBuffer append [$commonStrings jget EQUALS]
        $stringBuffer appendint [jint [[[my jget MAX_LAYERS] getValue] intValue]]
        return [$stringBuffer toString]
    }
}

namespace eval ::GameConfigurationCentral {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::GameConfigurationCentral::staticGet_SINGLETON] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameConfigurationCentral::staticSet_SINGLETON [::GameConfigurationCentral new]
        }
        return [::GameConfigurationCentral::staticGet_SINGLETON]
    }
}


