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
# package org.allbinary.animation

oo::class create ::BaseAnimationInterfaceFactoryInterfaceComposite {
    superclass ::JObject
}

oo::define ::BaseAnimationInterfaceFactoryInterfaceComposite {
    method initFields_BaseAnimationInterfaceFactoryInterfaceComposite {} {
        my jset basicAnimationInterfaceFactoryInterfaceArray {}
        
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray} {
        next
        my initFields_BaseAnimationInterfaceFactoryInterfaceComposite
        my jset basicAnimationInterfaceFactoryInterfaceArray $basicAnimationInterfaceFactoryInterfaceArray
    }
    

    method getInstance {instanceId} {
        return [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
    }
    

    method getBasicAnimationInterfaceFactoryInterfaceArray {} {
        return [my jget basicAnimationInterfaceFactoryInterfaceArray]
    }
    

    method setBasicAnimationInterfaceFactoryInterfaceArray {basicAnimationInterfaceFactoryInterfaceArray} {
        my jset basicAnimationInterfaceFactoryInterfaceArray $basicAnimationInterfaceFactoryInterfaceArray
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::BaseAnimationInterfaceFactoryInterfaceComposite {
}


