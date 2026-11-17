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
# package org.allbinary.direction

oo::class create ::DirectionFactory {
    superclass ::JObject
}

oo::define ::DirectionFactory {
    method initFields_DirectionFactory {} {
        my jset NAME {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset DOWN {}
        my jset UP {}
        my jset UP_LEFT {}
        my jset UP_RIGHT {}
        my jset DOWN_LEFT {}
        my jset DOWN_RIGHT {}
        my jset NOT_BORDERED_WITH {}
        my jset NO_DIRECTION {}
        my jset TOP {}
        my jset BOTTOM {}
        my jset ALL_DIRECTION {}
        my jset NAME "DIRECTION"
        my jset LEFT [::Direction new [[::CommonPhoneStrings::getInstance] jget LEFT] "WEST" 0 1]
        my jset RIGHT [::Direction new [[::CommonPhoneStrings::getInstance] jget RIGHT] "EAST" 1 0]
        my jset DOWN [::Direction new [[::CommonPhoneStrings::getInstance] jget DOWN] "SOUTH" 2 0]
        my jset UP [::Direction new [[::CommonPhoneStrings::getInstance] jget UP] "NORTH" 3 0]
        
        
        
        
        my jset NOT_BORDERED_WITH [::Direction new "NOT_BORDERED_WITH" "NOT_BORDERED_WITH" 8 0]
        my jset NO_DIRECTION [::Direction new "NO_DIRECTION" "NO_DIRECTION" 9 0]
        my jset TOP [::Direction new "TOP" "TOP" 10 0]
        my jset BOTTOM [::Direction new "BOTTOM" "BOTTOM" 11 0]
        my jset ALL_DIRECTION [::Direction new "ALL_DIRECTION" "ALL_DIRECTION" 12 0]
        return
    }
    
    

    constructor {} {
        next
        my initFields_DirectionFactory
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        my jset UP_LEFT [::Direction new "UP LEFT" [[[[$stringBuffer append [[my jget UP] getOtherName]] append [$commonSeps jget SPACE]] append [[my jget LEFT] getOtherName]] toString] 4 0]
        $stringBuffer delete 0 [$stringBuffer length]
        my jset UP_RIGHT [::Direction new "UP RIGHT" [[[[$stringBuffer append [[my jget UP] getOtherName]] append [$commonSeps jget SPACE]] append [[my jget RIGHT] getOtherName]] toString] 5 0]
        $stringBuffer delete 0 [$stringBuffer length]
        my jset DOWN_LEFT [::Direction new "DOWN LEFT" [[[[$stringBuffer append [[my jget DOWN] getOtherName]] append [$commonSeps jget SPACE]] append [[my jget LEFT] getOtherName]] toString] 6 0]
        $stringBuffer delete 0 [$stringBuffer length]
        my jset DOWN_RIGHT [::Direction new "DOWN RIGHT" [[[[$stringBuffer append [[my jget DOWN] getOtherName]] append [$commonSeps jget SPACE]] append [[my jget RIGHT] getOtherName]] toString] 7 0]
    }
}

namespace eval ::DirectionFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DirectionFactory new]
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
        return [::DirectionFactory::staticGet_instance]
    }
}


