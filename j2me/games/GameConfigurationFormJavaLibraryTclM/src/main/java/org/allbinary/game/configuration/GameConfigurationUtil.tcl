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

oo::class create ::GameConfigurationUtil {
    superclass ::JObject
}

oo::define ::GameConfigurationUtil {
    method initFields_GameConfigurationUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset GAUGE_UPDATE {}
        my jset FROM {}
        my jset TO {}
        my jset COMPETITION_VALUE 0
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset GAUGE_UPDATE "Gauge Update: "
        my jset FROM " from: "
        my jset TO " to: "
        my jset COMPETITION_VALUE 1
        return
    }

    constructor {} {
        next
        my initFields_GameConfigurationUtil
    }
    
    

    method change {gameOptionsForm gauge} {
        my update $gauge
        set gameConfigurationSingleton [::GameConfigurationSingleton::getInstance]
        set gameConfiguration [$gameConfigurationSingleton getInstanceByName [$gauge getLabel]]
        my updateChallange $gameOptionsForm $gameConfiguration
    }
    

    method update {gauge} {
        set gameConfigurationSingleton [::GameConfigurationSingleton::getInstance]
        set gameConfiguration [$gameConfigurationSingleton getInstanceByName [$gauge getLabel]]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        set value [$smallIntegerSingletonFactory getAt [expr {[$gauge getValue] + [[$gameConfiguration getMinValue] intValue]}]]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [my jget GAUGE_UPDATE]
        $stringBuffer append [$gameConfiguration getName]
        $stringBuffer append [my jget FROM]
        $stringBuffer appendint [jint [[$gameConfiguration getValue] intValue]]
        $stringBuffer append [my jget TO]
        $stringBuffer appendint [jint [$value intValue]]
        [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget UPDATE]
        $gameConfiguration setValue $value
    }
    

    method setDefault {gauge} {
        set gameConfigurationSingleton [::GameConfigurationSingleton::getInstance]
        set gameConfiguration [$gameConfigurationSingleton getInstanceByName [$gauge getLabel]]
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Gauge Default: "
        $stringBuffer append [$gameConfiguration getName]
        $stringBuffer append [my jget TO]
        $stringBuffer appendint [jint [[$gameConfiguration getDefaultValue] intValue]]
        [my jget logUtil] putF [$stringBuffer toString] [self] "setDefault"
        $gauge setValue [expr {[[$gameConfiguration getDefaultValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
        $gameConfiguration setValue [$gameConfiguration getDefaultValue]
    }
    

    method updateChallange {gameOptionsForm gameConfiguration} {
        set gameConfigurationSingleton [::GameConfigurationSingleton::getInstance]
        set gameConfigurationCentral [::GameConfigurationCentral::getInstance]
        if {[expr {$gameConfiguration eq [$gameConfigurationCentral jget CHALLENGE_LEVEL]}]} {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "updateChallange"
            [$gameConfigurationCentral jget COLLIDE_DAMAGE] setValue [$gameConfiguration getValue]
            [$gameConfigurationCentral jget ATTACK_CHALLENGE_LEVEL] setValue [$gameConfiguration getValue]
            [$gameConfigurationCentral jget DURABILITY_CHALLENGE_LEVEL] setValue [$gameConfiguration getValue]
            [$gameConfigurationCentral jget SPEED_CHALLENGE_LEVEL] setValue [$gameConfiguration getValue]
            set size [$gameOptionsForm size]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set item [$gameOptionsForm get $index]
                if {[jinstanceof $item ::GameConfigurationGauge]} {
                    set gauge $item
                    set name [$item getLabel]
                    set nextGameConfiguration [$gameConfigurationSingleton getInstanceByName $name]
                    if {[expr {$nextGameConfiguration eq [$gameConfigurationCentral jget COLLIDE_DAMAGE]}]} {
                        $gauge setValue [expr {[[[$gameConfigurationCentral jget COLLIDE_DAMAGE] getValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
                    } elseif {[expr {$nextGameConfiguration eq [$gameConfigurationCentral jget DURABILITY_CHALLENGE_LEVEL]}]} {
                        $gauge setValue [expr {[[[$gameConfigurationCentral jget DURABILITY_CHALLENGE_LEVEL] getValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
                    } elseif {[expr {$nextGameConfiguration eq [$gameConfigurationCentral jget ATTACK_CHALLENGE_LEVEL]}]} {
                        $gauge setValue [expr {[[[$gameConfigurationCentral jget ATTACK_CHALLENGE_LEVEL] getValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
                    } elseif {[expr {$nextGameConfiguration eq [$gameConfigurationCentral jget SPEED_CHALLENGE_LEVEL]}]} {
                        $gauge setValue [expr {[[[$gameConfigurationCentral jget SPEED_CHALLENGE_LEVEL] getValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
                    }
                }
            }
        }
    }
    

    method updateCompetitionValue {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "updateCompetitionValue"
        set gameConfigurationCentral [::GameConfigurationCentral::getInstance]
        my jset COMPETITION_VALUE [expr {[expr {[expr {[[[$gameConfigurationCentral jget COLLIDE_DAMAGE] getValue] intValue] + [[[$gameConfigurationCentral jget ATTACK_CHALLENGE_LEVEL] getValue] intValue]}] + [[[$gameConfigurationCentral jget DURABILITY_CHALLENGE_LEVEL] getValue] intValue]}] + [[[$gameConfigurationCentral jget SPEED_CHALLENGE_LEVEL] getValue] intValue]}]
        my jset COMPETITION_VALUE ([expr {[my jget COMPETITION_VALUE] >> 2}])
    }
    

    method getCompetitionValue {} {
        return [my jget COMPETITION_VALUE]
    }
}

namespace eval ::GameConfigurationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameConfigurationUtil new]
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
        return [::GameConfigurationUtil::staticGet_instance]
    }
}


