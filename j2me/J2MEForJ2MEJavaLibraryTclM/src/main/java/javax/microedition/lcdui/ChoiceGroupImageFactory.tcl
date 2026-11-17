# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

oo::class create ::ChoiceGroupImageFactory {
    superclass ::JObject
}

oo::define ::ChoiceGroupImageFactory {
    method initFields_ChoiceGroupImageFactory {} {
        my jset multiOff {}
        my jset multiOn {}
        my jset radioOff {}
        my jset radioOn {}
        my jset midpUtil {}
        my jset imgMultiOffO {}
        my jset imgMultiOnO {}
        my jset imgRadioOffO {}
        my jset imgRadioOnO {}
        my jset imgMultiOff {}
        my jset imgMultiOn {}
        my jset imgRadioOff {}
        my jset imgRadioOn {}
        my jset imageArray {}
        my jset multiOff [jarrayfrom [list [jbyte [expr {-119}]] 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 [jbyte [expr {-12}]] [jbyte [expr {-117}]] 0 0 0 6 80 76 84 69 [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] [jbyte [expr {-57}]] 75 [jbyte [expr {-33}]] [jbyte [expr {-8}]] 0 0 0 30 73 68 65 84 120 [jbyte [expr {-38}]] 99 96 96 96 96 12 101 [jbyte [expr {-8}]] [jbyte [expr {-51}]] [jbyte [expr {-32}]] [jbyte [expr {-64}]] 32 [jbyte [expr {-64}]] [jbyte [expr {-60}]] [jbyte [expr {-64}]] [jbyte [expr {-64}]] [jbyte [expr {-128}]] 11 51 [jbyte [expr {-122}]] 50 [jbyte [expr {-4}]] 6 0 63 116 3 1 53 [jbyte [expr {-108}]] 39 [jbyte [expr {-26}]] 0 0 0 0 73 69 78 68 [jbyte [expr {-82}]] 66 96 [jbyte [expr {-126}]]]]
        my jset multiOn [jarrayfrom [list [jbyte [expr {-119}]] 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 [jbyte [expr {-12}]] [jbyte [expr {-117}]] 0 0 0 12 80 76 84 69 [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] 106 106 106 2 2 2 106 [jbyte [expr {-103}]] 14 [jbyte [expr {-47}]] 0 0 0 53 73 68 65 84 120 [jbyte [expr {-38}]] 99 96 96 124 [jbyte [expr {-64}]] [jbyte [expr {-16}]] [jbyte [expr {-1}]] [jbyte [expr {-77}]] 3 [jbyte [expr {-45}]] 65 [jbyte [expr {-111}]] 15 76 12 108 12 76 12 [jbyte [expr {-4}]] 12 76 12 18 12 76 [jbyte [expr {-68}]] 127 24 [jbyte [expr {-104}]] 126 45 96 96 [jbyte [expr {-7}]] [jbyte [expr {-11}]] [jbyte [expr {-109}]] [jbyte [expr {-127}]] [jbyte [expr {-23}]] [jbyte [expr {-65}]] 3 3 [jbyte [expr {-29}]] 127 [jbyte [expr {-122}]] [jbyte [expr {-113}]] 0 5 37 12 [jbyte [expr {-34}]] 1 [jbyte [expr {-99}]] [jbyte [expr {-83}]] 100 0 0 0 0 73 69 78 68 [jbyte [expr {-82}]] 66 96 [jbyte [expr {-126}]]]]
        my jset radioOff [jarrayfrom [list [jbyte [expr {-119}]] 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 [jbyte [expr {-44}]] [jbyte [expr {-62}]] [jbyte [expr {-97}]] [jbyte [expr {-75}]] 0 0 0 9 80 76 84 69 [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] 106 106 106 [jbyte [expr {-44}]] 13 [jbyte [expr {-1}]] [jbyte [expr {-24}]] 0 0 0 42 73 68 65 84 120 [jbyte [expr {-38}]] 99 96 90 [jbyte [expr {-59}]] [jbyte [expr {-64}]] 32 [jbyte [expr {-63}]] 48 [jbyte [expr {-127}]] 65 [jbyte [expr {-127}]] 65 [jbyte [expr {-127}]] 41 [jbyte [expr {-127}]] [jbyte [expr {-31}]] 5 19 3 3 3 50 102 80 96 80 96 [jbyte [expr {-6}]] [jbyte [expr {-63}]] 80 [jbyte [expr {-64}]] [jbyte [expr {-64}]] [jbyte [expr {-76}]] [jbyte [expr {-118}]] 1 0 113 24 5 61 73 [jbyte [expr {-68}]] [jbyte [expr {-100}]] 98 0 0 0 0 73 69 78 68 [jbyte [expr {-82}]] 66 96 [jbyte [expr {-126}]]]]
        my jset radioOn [jarrayfrom [list [jbyte [expr {-119}]] 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 [jbyte [expr {-44}]] [jbyte [expr {-62}]] [jbyte [expr {-97}]] [jbyte [expr {-75}]] 0 0 0 12 80 76 84 69 [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-1}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] [jbyte [expr {-69}]] 106 106 106 2 2 2 106 [jbyte [expr {-103}]] 14 [jbyte [expr {-47}]] 0 0 0 50 73 68 65 84 120 [jbyte [expr {-38}]] 5 [jbyte [expr {-63}]] 65 13 0 32 12 4 [jbyte [expr {-63}]] [jbyte [expr {-19}]] [jbyte [expr {-11}]] [jbyte [expr {-117}]] 1 18 68 [jbyte [expr {-100}]] 10 52 19 94 72 64 17 101 [jbyte [expr {-122}]] 44 [jbyte [expr {-44}]] [jbyte [expr {-29}]] 98 [jbyte [expr {-52}]] 89 77 [jbyte [expr {-102}]] 40 2 85 [jbyte [expr {-95}]] [jbyte [expr {-73}]] [jbyte [expr {-63}]] [jbyte [expr {-104}]] [jbyte [expr {-63}]] 37 [jbyte [expr {-117}]] 15 [jbyte [expr {-40}]] 119 10 41 78 26 [jbyte [expr {-79}]] 59 0 0 0 0 73 69 78 68 [jbyte [expr {-82}]] 66 96 [jbyte [expr {-126}]]]]
        my jset midpUtil [::MIDPUtil::getInstance]
        my jset imgMultiOffO [[my jget midpUtil] createImageFromByteArray [my jget multiOff] 0 [[my jget multiOff] length]]
        my jset imgMultiOnO [[my jget midpUtil] createImageFromByteArray [my jget multiOn] 0 [[my jget multiOn] length]]
        my jset imgRadioOffO [[my jget midpUtil] createImageFromByteArray [my jget radioOff] 0 [[my jget radioOff] length]]
        my jset imgRadioOnO [[my jget midpUtil] createImageFromByteArray [my jget radioOn] 0 [[my jget radioOn] length]]
        my jset imgMultiOff [my jget imgMultiOffO]
        my jset imgMultiOn [my jget imgMultiOnO]
        my jset imgRadioOff [my jget imgRadioOffO]
        my jset imgRadioOn [my jget imgRadioOnO]
        my jset imageArray [jarrayfrom [list [my jget imgMultiOff] [my jget imgMultiOn] [my jget imgRadioOff] [my jget imgRadioOn]]]
        return
    }

    constructor {} {
        next
        my initFields_ChoiceGroupImageFactory
    }
    
    

    method getImageArray {} {
        return [my jget imageArray]
    }
    

    method init {imageArray} {
        my jset imgMultiOff [$imageArray get 0]
        [my jget imageArray] set 0 [my jget imgMultiOff]
        my jset imgMultiOn [$imageArray get 1]
        [my jget imageArray] set 1 [my jget imgMultiOn]
        my jset imgRadioOff [$imageArray get 2]
        [my jget imageArray] set 2 [my jget imgRadioOff]
        my jset imgRadioOn [$imageArray get 3]
        [my jget imageArray] set 3 [my jget imgRadioOn]
    }
}

namespace eval ::ChoiceGroupImageFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ChoiceGroupImageFactory new]
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
        return [::ChoiceGroupImageFactory::staticGet_instance]
    }
}


