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

oo::class create ::BaseSoundsFactory {
    superclass ::JObject
}

oo::define ::BaseSoundsFactory {
    method initFields_BaseSoundsFactory {} {
        my jset initialized false
        my jset initialized false
        return
    }

    constructor {} {
        next
        my initFields_BaseSoundsFactory
    }
    

    method init {} {
    }
    

    method getSoundInterfaceArray {} {
        return [jarray 0 {}]
    }
    

    method setInitialized {initialized} {
        my jset initialized $initialized
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
}

namespace eval ::BaseSoundsFactory {
}


