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
# package org.allbinary.game.input

oo::class create ::PCKeyFactory {
    superclass ::JObject
}

oo::define ::PCKeyFactory {
    method initFields_PCKeyFactory {} {
        my jset UNKNOWN {}
        my jset ENTER {}
        my jset _A {}
        my jset _B {}
        my jset _C {}
        my jset _D {}
        my jset _E {}
        my jset _F {}
        my jset _G {}
        my jset _H {}
        my jset _I {}
        my jset _J {}
        my jset _K {}
        my jset _L {}
        my jset _M {}
        my jset _N {}
        my jset _O {}
        my jset _P {}
        my jset _Q {}
        my jset _R {}
        my jset _S {}
        my jset _T {}
        my jset _U {}
        my jset _V {}
        my jset _W {}
        my jset _X {}
        my jset _Y {}
        my jset _Z {}
        my jset a {}
        my jset b {}
        my jset c {}
        my jset d {}
        my jset e {}
        my jset f {}
        my jset g {}
        my jset h {}
        my jset i {}
        my jset j {}
        my jset k {}
        my jset l {}
        my jset m {}
        my jset n {}
        my jset o {}
        my jset p {}
        my jset q {}
        my jset r {}
        my jset s {}
        my jset t {}
        my jset u {}
        my jset v {}
        my jset w {}
        my jset x {}
        my jset y {}
        my jset z {}
        my jset ZERO {}
        my jset ONE {}
        my jset TWO {}
        my jset THREE {}
        my jset FOUR {}
        my jset FIVE {}
        my jset SIX {}
        my jset SEVEN {}
        my jset EIGHT {}
        my jset NINE {}
        my jset DPAD_UP {}
        my jset DPAD_DOWN {}
        my jset DPAD_LEFT {}
        my jset DPAD_RIGHT {}
        my jset DPAD_UP2 {}
        my jset DPAD_DOWN2 {}
        my jset DPAD_LEFT2 {}
        my jset DPAD_RIGHT2 {}
        my jset COMMA {}
        my jset SPACE {}
        my jset DEL {}
        my jset STAR {}
        my jset QUESTION {}
        my jset PERIOD {}
        my jset ESCAPE {}
        my jset BACK_SPACE {}
        my jset UNKNOWN [::PCGameKey new 254 "UNKNOWN"]
        my jset ENTER [::PCGameKey new 13 "Enter"]
        my jset _A [::PCGameKey new 65 "A"]
        my jset _B [::PCGameKey new 66 "B"]
        my jset _C [::PCGameKey new 67 "C"]
        my jset _D [::PCGameKey new 68 "D"]
        my jset _E [::PCGameKey new 69 "E"]
        my jset _F [::PCGameKey new 70 "F"]
        my jset _G [::PCGameKey new 71 "G"]
        my jset _H [::PCGameKey new 72 "H"]
        my jset _I [::PCGameKey new 73 "I"]
        my jset _J [::PCGameKey new 74 "J"]
        my jset _K [::PCGameKey new 75 "K"]
        my jset _L [::PCGameKey new 76 "L"]
        my jset _M [::PCGameKey new 77 "M"]
        my jset _N [::PCGameKey new 78 "N"]
        my jset _O [::PCGameKey new 79 "O"]
        my jset _P [::PCGameKey new 80 "P"]
        my jset _Q [::PCGameKey new 81 "Q"]
        my jset _R [::PCGameKey new 82 "R"]
        my jset _S [::PCGameKey new 83 "S"]
        my jset _T [::PCGameKey new 84 "T"]
        my jset _U [::PCGameKey new 85 "U"]
        my jset _V [::PCGameKey new 86 "V"]
        my jset _W [::PCGameKey new 87 "W"]
        my jset _X [::PCGameKey new 88 "X"]
        my jset _Y [::PCGameKey new 89 "Y"]
        my jset _Z [::PCGameKey new 90 "Z"]
        my jset a [::PCGameKey new 97 "a"]
        my jset b [::PCGameKey new 98 "b"]
        my jset c [::PCGameKey new 99 "c"]
        my jset d [::PCGameKey new 100 "d"]
        my jset e [::PCGameKey new 101 "e"]
        my jset f [::PCGameKey new 102 "f"]
        my jset g [::PCGameKey new 103 "g"]
        my jset h [::PCGameKey new 104 "h"]
        my jset i [::PCGameKey new 105 "i"]
        my jset j [::PCGameKey new 106 "j"]
        my jset k [::PCGameKey new 107 "k"]
        my jset l [::PCGameKey new 108 "l"]
        my jset m [::PCGameKey new 109 "m"]
        my jset n [::PCGameKey new 110 "n"]
        my jset o [::PCGameKey new 111 "o"]
        my jset p [::PCGameKey new 112 "p"]
        my jset q [::PCGameKey new 113 "q"]
        my jset r [::PCGameKey new 114 "r"]
        my jset s [::PCGameKey new 115 "s"]
        my jset t [::PCGameKey new 116 "t"]
        my jset u [::PCGameKey new 117 "u"]
        my jset v [::PCGameKey new 118 "v"]
        my jset w [::PCGameKey new 119 "w"]
        my jset x [::PCGameKey new 120 [[::PositionStrings::getInstance] jget X]]
        my jset y [::PCGameKey new 121 [[::PositionStrings::getInstance] jget Y]]
        my jset z [::PCGameKey new 122 "z"]
        my jset ZERO [::PCGameKey new 48 [[::CommonPhoneStrings::getInstance] jget ZERO]]
        my jset ONE [::PCGameKey new 49 [[::CommonPhoneStrings::getInstance] jget ONE]]
        my jset TWO [::PCGameKey new 50 [[::CommonPhoneStrings::getInstance] jget TWO]]
        my jset THREE [::PCGameKey new 51 [[::CommonPhoneStrings::getInstance] jget THREE]]
        my jset FOUR [::PCGameKey new 52 [[::CommonPhoneStrings::getInstance] jget FOUR]]
        my jset FIVE [::PCGameKey new 53 [[::CommonPhoneStrings::getInstance] jget FIVE]]
        my jset SIX [::PCGameKey new 54 [[::CommonPhoneStrings::getInstance] jget SIX]]
        my jset SEVEN [::PCGameKey new 55 [[::CommonPhoneStrings::getInstance] jget SEVEN]]
        my jset EIGHT [::PCGameKey new 56 [[::CommonPhoneStrings::getInstance] jget EIGHT]]
        my jset NINE [::PCGameKey new 57 [[::CommonPhoneStrings::getInstance] jget NINE]]
        my jset DPAD_UP [::PCGameKey new 38 [[::CommonPhoneStrings::getInstance] jget UP]]
        my jset DPAD_DOWN [::PCGameKey new 40 [[::CommonPhoneStrings::getInstance] jget DOWN]]
        my jset DPAD_LEFT [::PCGameKey new 37 [[::CommonPhoneStrings::getInstance] jget LEFT]]
        my jset DPAD_RIGHT [::PCGameKey new 39 [[::CommonPhoneStrings::getInstance] jget RIGHT]]
        my jset DPAD_UP2 [my jget DPAD_UP]
        my jset DPAD_DOWN2 [my jget DPAD_DOWN]
        my jset DPAD_LEFT2 [my jget DPAD_LEFT]
        my jset DPAD_RIGHT2 [my jget DPAD_RIGHT]
        my jset COMMA [::PCGameKey new 44 "COMMA"]
        my jset SPACE [::PCGameKey new 32 "SPACE"]
        my jset DEL [::PCGameKey new 46 "DEL"]
        my jset STAR [::PCGameKey new 42 [[::CommonPhoneStrings::getInstance] jget STAR]]
        my jset QUESTION [::PCGameKey new 47 "?"]
        my jset PERIOD [::PCGameKey new 46 [[::CommonSeps::getInstance] jget PERIOD]]
        my jset ESCAPE [::PCGameKey new 27 "Esc"]
        my jset BACK_SPACE [::PCGameKey new 8 "Backspace"]
        return
    }

    constructor {} {
        next
        my initFields_PCKeyFactory
    }
    
    

    method isSubmission {input} {
        if {[expr {$input eq [my jget ENTER]}]} {
            return true
        }
        return false
    }
    

    method isDelete {input} {
        if {[expr {$input eq [my jget DEL]}]} {
            return true
        }
        return false
    }
    

    method isBackSpace {input} {
        if {[expr {$input eq [my jget BACK_SPACE]}]} {
            return true
        }
        return false
    }
    

    method isUp {input} {
        if {[expr {[expr {$input eq [my jget DPAD_UP]}] || [expr {$input eq [my jget DPAD_UP2]}]}]} {
            return true
        }
        return false
    }
    

    method isDown {input} {
        if {[expr {[expr {$input eq [my jget DPAD_DOWN]}] || [expr {$input eq [my jget DPAD_DOWN2]}]}]} {
            return true
        }
        return false
    }
    

    method isLeft {input} {
        if {[expr {[expr {$input eq [my jget DPAD_LEFT]}] || [expr {$input eq [my jget DPAD_LEFT2]}]}]} {
            return true
        }
        return false
    }
    

    method isRight {input} {
        if {[expr {[expr {$input eq [my jget DPAD_RIGHT]}] || [expr {$input eq [my jget DPAD_RIGHT2]}]}]} {
            return true
        }
        return false
    }
    

    method isEnter {input} {
        if {[expr {$input eq [my jget ENTER]}]} {
            return true
        }
        return false
    }
}

namespace eval ::PCKeyFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::PCKeyFactory new]
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
        return [::PCKeyFactory::staticGet_SINGLETON]
    }
}


