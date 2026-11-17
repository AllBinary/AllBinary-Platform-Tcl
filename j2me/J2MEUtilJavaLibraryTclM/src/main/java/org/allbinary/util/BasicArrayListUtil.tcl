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
# package org.allbinary.util

oo::class create ::BasicArrayListUtil {
    superclass ::JObject
}

oo::define ::BasicArrayListUtil {
    method initFields_BasicArrayListUtil {} {
        my jset NULL_ARRAY_OF_ARRAY {}
        my jset myRandomFactory {}
        my jset immutableInstance {}
        my jset NULL_ARRAY_OF_ARRAY [jarrayof 0 {jarray 0 {}}]
        my jset myRandomFactory [::MyRandomFactory::getInstance]
        my jset immutableInstance [::ImmutableBasicArrayList new "Immutable" 0]
        return
    }

    constructor {} {
        next
        my initFields_BasicArrayListUtil
    }
    
    

    method getRandom {list} {
        set i_random [my getRandomIndex $list]
        return [[$list jget objectArray] get $i_random]
    }
    

    method getRandomIndex {list} {
        return [[my jget myRandomFactory] getAbsoluteNextInt [$list size]]
    }
    

    method reverse {list} {
        set lastMinusOneIndex [jint [expr {[$list size] - 2}]]
        set temp {}
        set size [jdiv $lastMinusOneIndex 2]
        set secondSwapIndex 0
        for {set index 0} {[expr {$index <= $size}]} {jpostincr index 1} {
            set secondSwapIndex [jint [expr {$lastMinusOneIndex - $index}]]
            set temp [$list removeAt $index]
            $list addAt $index [$list removeAt $secondSwapIndex]
            $list addAt [jint [expr {$secondSwapIndex + 1}]] $temp
        }
    }
    

    method log {list} {
        set S_LABEL " s: "
        set size [$list size]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [[::CommonLabels::getInstance] jget TOTAL_LABEL]
        $stringBuffer appendint $size
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set usedList [[$list jget objectArray] get $index]
            $stringBuffer append $S_LABEL
            $stringBuffer appendint [$usedList size]
        }
        return [$stringBuffer toString]
    }
    

    method getImmutableInstance {} {
        return [my jget immutableInstance]
    }
    
}

namespace eval ::BasicArrayListUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicArrayListUtil new]
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
        return [::BasicArrayListUtil::staticGet_instance]
    }
    proc main {args} {
        set commonPhoneStrings [::CommonPhoneStrings::getInstance]
        set list [::BasicArrayListD new]
        $list add [$commonPhoneStrings jget ONE]
        $list add [$commonPhoneStrings jget TWO]
        $list add [$commonPhoneStrings jget THREE]
        $list add [$commonPhoneStrings jget FOUR]
        $list add [$commonPhoneStrings jget FIVE]
        $list add [$commonPhoneStrings jget SIX]
        $list add [$commonPhoneStrings jget SEVEN]
        $list add [$commonPhoneStrings jget EIGHT]
        $list add [$commonPhoneStrings jget NINE]
        [::BasicArrayListUtil::getInstance] reverse $list
        puts [jstr [$list toString]]
    }
}


