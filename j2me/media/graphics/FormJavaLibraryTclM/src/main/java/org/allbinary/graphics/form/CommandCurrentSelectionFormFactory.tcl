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
# package org.allbinary.graphics.form

oo::class create ::CommandCurrentSelectionFormFactory {
    superclass ::JObject
}

oo::define ::CommandCurrentSelectionFormFactory {
    method initFields_CommandCurrentSelectionFormFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_CommandCurrentSelectionFormFactory
    }
    
}

namespace eval ::CommandCurrentSelectionFormFactory {
    proc getInstance {title items rectangle formType border moveForSmallScreen backgroundBasicColor foregroundBasicColor} {
        if {[[::Features::getInstance] isFeature [[::TouchFeatureFactory::getInstance] jget TOUCH_ENABLED]]} {
            set scrollSelectionForm [::CommandCurrentSelectionForm new $title $items $border $moveForSmallScreen $backgroundBasicColor $foregroundBasicColor]
            $scrollSelectionForm init $rectangle $formType
            return $scrollSelectionForm
        } else {
            return [::ScrollSelectionFormNoneFactory::getInstance]
        }
    }
}


