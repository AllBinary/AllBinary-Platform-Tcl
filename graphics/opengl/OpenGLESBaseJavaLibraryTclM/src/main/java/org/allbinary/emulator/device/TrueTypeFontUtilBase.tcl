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
# package org.allbinary.emulator.device

oo::class create ::TrueTypeFontUtilBase {
    superclass ::JObject
}

oo::define ::TrueTypeFontUtilBase {
    method initFields_TrueTypeFontUtilBase {} {
        my jset shortPattern {}
        my jset patternAsBytes {}
        my jset pattern {}
        my jset charArray {}
        my jset _characterWidth {}
        my jset characterArray {}
        my jset size 0
        my jset lastCapIndex 0
        my jset currentFont {}
        my jset scale 0
        my jset CELLS_PER_ROW 0
        my jset fontSize 0
        my jset baseCharWidth 0
        my jset cellSize 0
        my jset textureSize 0
        my jset actualCellsPerRow 0
        
        my jset patternAsBytes [jarrayfrom [list 32 48 49 50 51 52 53 54 55 56 57 65 66 32 32 32 67 68 69 70 71 72 73 74 75 76 77 78 79 32 32 32 80 81 82 83 84 85 86 87 88 89 90 97 98 32 32 32 99 100 101 102 103 104 105 106 107 108 109 110 111 32 32 32 112 113 114 115 116 117 118 119 120 121 122 46 63 32 32 32 33 36 37 96 [jbyte [expr {-62}]] [jbyte [expr {-84}]] [jbyte [expr {-62}]] [jbyte [expr {-84}]] 34 [jbyte [expr {-62}]] [jbyte [expr {-93}]] [jbyte [expr {-62}]] [jbyte [expr {-93}]] 94 38 42 40 32 32 32 41 95 43 45 61 91 93 123 125 59 39 35 58 32 32 32 64 126 44 47 60 62 92 124 [jbyte [expr {-62}]] [jbyte [expr {-82}]] [jbyte [expr {-62}]] [jbyte [expr {-82}]] [jbyte [expr {-62}]] [jbyte [expr {-87}]] [jbyte [expr {-62}]] [jbyte [expr {-87}]]]]
        my jset pattern [my jget patternAsBytes]
        my jset charArray [jarrayfrom [list 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x6f 0x50 0x56 0x6b 0x51 0x52 0x5a 0x6a 0x5c 0x60 0x5b 0x62 0x72 0x63 0x4b 0x73 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0x6c 0x69 0x74 0x64 0x75 0x4c 0x70 0xb 0xc 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x20 0x21 0x22 0x23 0x24 0x25 0x26 0x27 0x28 0x29 0x2a 0x65 0x76 0x66 0x59 0x61 0x53 0x2b 0x2c 0x30 0x31 0x32 0x33 0x34 0x35 0x36 0x37 0x38 0x39 0x3a 0x3b 0x3c 0x40 0x41 0x42 0x43 0x44 0x45 0x46 0x47 0x48 0x49 0x4a 0x67 0x77 0x68 0x71 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x58 0x0 0x0 0x0 0x0 0x0 0x7b 0x0 0x0 0x55 0x0 0x79 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0]]
        my jset _characterWidth [jarray [string length [my jget pattern]] 0]
        my jset characterArray [jarray 1 0]
        my jset size [string length [my jget pattern]]
        my jset lastCapIndex [string first [scan "Z" %c] [my jget pattern]]
        my jset currentFont [::Font::getDefaultFont]
        
        
        
        
        
        
        
        return
    }
    

    constructor {scale} {
        next
        my initFields_TrueTypeFontUtilBase
        set shortPattern [[::StringUtil::getInstance] jget EMPTY_STRING]
        if {[::AvianUtil::isAvian]} {
            set shortPatterAsByteArray [jarrayfrom [list 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 [jbyte [expr {-62}]] [jbyte [expr {-84}]] [jbyte [expr {-62}]] [jbyte [expr {-84}]] 34 [jbyte [expr {-62}]] [jbyte [expr {-93}]] [jbyte [expr {-62}]] [jbyte [expr {-93}]] 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 [jbyte [expr {-62}]] [jbyte [expr {-82}]] [jbyte [expr {-62}]] [jbyte [expr {-82}]] [jbyte [expr {-62}]] [jbyte [expr {-87}]] [jbyte [expr {-62}]] [jbyte [expr {-87}]]]]
            set shortPattern $shortPatterAsByteArray
        } else {
            set shortPatterAsByteArray [jarrayfrom [list 32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 [jbyte [expr {-62}]] [jbyte [expr {-84}]] 34 [jbyte [expr {-62}]] [jbyte [expr {-93}]] 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 [jbyte [expr {-62}]] [jbyte [expr {-82}]] [jbyte [expr {-62}]] [jbyte [expr {-87}]]]]
            set shortPattern $shortPatterAsByteArray
        }
        my jset shortPattern $shortPattern
        my jset scale $scale
        my jset CELLS_PER_ROW 16
        my jset fontSize [jint [expr {([jint [expr {20 + 6}]]) * [my jget scale]}]]
        my jset baseCharWidth [jint [expr {[my jget fontSize] + ([jint [expr {6 * [my jget scale]}]])}]]
        my jset cellSize [jint [expr {[my jget fontSize] + ([jint [expr {6 * [my jget scale]}]])}]]
        my jset textureSize [my getAsTextureSize [jint [expr {[my jget CELLS_PER_ROW] * [my jget cellSize]}]]]
        my jset actualCellsPerRow [jdiv [my jget textureSize] [my jget cellSize]]
    }
    

    method getAsTextureSize {textureSize} {
        if {[expr {$textureSize <= 64}]} {
            set textureSize 64
        } elseif {[expr {$textureSize <= 128}]} {
            set textureSize 128
        } elseif {[expr {$textureSize <= 256}]} {
            set textureSize 256
        } elseif {[expr {$textureSize <= 512}]} {
            set textureSize 512
        } elseif {[expr {$textureSize <= 1024}]} {
            set textureSize 1024
        }
        return $textureSize
    }
    

    method getCellSize {cellSize} {
        if {[expr {$cellSize <= 16}]} {
            set cellSize 16
        } elseif {[expr {$cellSize <= 32}]} {
            set cellSize 32
        } elseif {[expr {$cellSize <= 64}]} {
            set cellSize 64
        } elseif {[expr {$cellSize <= 128}]} {
            set cellSize 128
        } elseif {[expr {$cellSize <= 256}]} {
            set cellSize 256
        }
        return $cellSize
    }
    

    method getYOffset {} {
        return ([jint [expr {([jint [expr {[my jget scale] - 1}]]) * [my jget cellSize]}]])
    }
}

namespace eval ::TrueTypeFontUtilBase {
}


