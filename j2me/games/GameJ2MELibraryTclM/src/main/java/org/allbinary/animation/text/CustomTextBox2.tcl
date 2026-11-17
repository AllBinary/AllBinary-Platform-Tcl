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
# package org.allbinary.animation.text

oo::class create ::CustomTextBox2 {
    superclass ::CustomTextBox
}

oo::define ::CustomTextBox2 {
    method initFields_CustomTextBox2 {} {
        return
    }
    

    constructor {cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor} {
        next $cmdListener $label $text $maxSize $constraints $font $backgroundBasicColor $foregroundBasicColor
        my initFields_CustomTextBox2
        [my getTextFieldItem] setFocus true
    }
}

namespace eval ::CustomTextBox2 {
}


