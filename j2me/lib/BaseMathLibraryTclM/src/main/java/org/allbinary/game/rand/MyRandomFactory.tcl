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
# package org.allbinary.game.rand

#Do not use in client code for money related things.
oo::class create ::MyRandomFactory {
    superclass ::JObject
}

oo::define ::MyRandomFactory {
    method initFields_MyRandomFactory {} {
        my jset mathUtil {}
        my jset rand {}
        my jset mathUtil [::MathUtil::getInstance]
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_MyRandomFactory
        my jset rand [::Random new [clock milliseconds]]
    }
    

    method setSeed {seed} {
        my jset rand [::Random new $seed]
    }
    

    method getNextInt {range} {
        set div [jint [expr {([jdiv [::Integer::staticGet_MAX_VALUE] $range]) + 1}]]
        return ([jdiv [[my jget rand] nextInt] $div])
    }
    

    method getAbsoluteNextInt {range} {
        return [[my jget mathUtil] abs [my getNextInt $range]]
    }
    

    method getAbsoluteNextIntAllowZero {range} {
        if {[expr {$range == 0}]} {
            return 0
        } else {
            return [[my jget mathUtil] abs [my getNextInt $range]]
        }
    }
    

    method shuffle {intArray} {
        my shuffleTotal $intArray [jint [expr {[$intArray length] * 7}]]
    }
    

    method shuffleTotal {intArray shuffleTotal} {
        set size [$intArray length]
        set randomIndex 0
        set randomIndex2 0
        set value 0
        for {set index 0} {[expr {$index < $shuffleTotal}]} {jpostincr index 1} {
            set randomIndex [my getAbsoluteNextIntAllowZero $size]
            set randomIndex2 [my getAbsoluteNextIntAllowZero $size]
            set value [$intArray get $randomIndex]
            $intArray set $randomIndex [$intArray get $randomIndex2]
            $intArray set $randomIndex2 $value
        }
    }
    

    method shuffle2 {intArray intArray2} {
        my shuffle2Total $intArray $intArray2 [jint [expr {[$intArray length] * 7}]]
    }
    

    method shuffle2Total {intArray intArray2 shuffleTotal} {
        set size [$intArray length]
        set randomIndex 0
        set randomIndex2 0
        set value 0
        set value2 0
        for {set index 0} {[expr {$index < $shuffleTotal}]} {jpostincr index 1} {
            set randomIndex [my getAbsoluteNextIntAllowZero $size]
            set randomIndex2 [my getAbsoluteNextIntAllowZero $size]
            set value [$intArray get $randomIndex]
            set value2 [$intArray2 get $randomIndex]
            $intArray set $randomIndex [$intArray get $randomIndex2]
            $intArray set $randomIndex2 $value
            $intArray2 set $randomIndex [$intArray2 get $randomIndex2]
            $intArray2 set $randomIndex2 $value2
        }
    }
    
}

namespace eval ::MyRandomFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MyRandomFactory new]
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
        return [::MyRandomFactory::staticGet_instance]
    }
    proc main {args} {
        set randomFactory [::MyRandomFactory::getInstance]
        set stringBuilder [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        set size2 100
        for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
            [$stringBuilder appendint [$randomFactory getAbsoluteNextInt 3]] append [$commonSeps jget COMMA]
        }
        puts [jstr [$stringBuilder toString]]
        $stringBuilder delete 0 [$stringBuilder length]
        set intArray [jarray 52 0]
        set intArray2 [jarray 52 0]
        set size [$intArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $intArray set $index $index
            $intArray2 set $index $index
        }
        $randomFactory shuffle2 $intArray $intArray2
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [$stringBuilder appendint [$intArray get $index]] append [$commonSeps jget COMMA]
        }
        puts [jstr [$stringBuilder toString]]
        $stringBuilder delete 0 [$stringBuilder length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [$stringBuilder appendint [$intArray2 get $index]] append [$commonSeps jget COMMA]
        }
        puts [jstr [$stringBuilder toString]]
        set found false
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set found false
            for {set index2 0} {[expr {$index2 < $size}]} {jpostincr index2 1} {
                if {[expr {[$intArray get $index2] == $index}]} {
                    set found true
                }
            }
            if {[expr {!$found}]} {
                error [jexception RuntimeException {}]
            }
        }
    }
}


