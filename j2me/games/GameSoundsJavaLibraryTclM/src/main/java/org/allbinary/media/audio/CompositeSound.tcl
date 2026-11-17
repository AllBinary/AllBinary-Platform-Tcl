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
# package org.allbinary.media.audio

oo::class create ::CompositeSound {
    superclass ::Sound
}

oo::define ::CompositeSound {
    method initFields_CompositeSound {} {
        return
    }
    

    constructor {resource} {
        next $resource
        my initFields_CompositeSound
    }
    

    method init {} {
        my setPlayerP [::PlayerComposite new [::AllBinaryMediaManager::createPlayer [my getResource]] 570]
    }
}

namespace eval ::CompositeSound {
}


