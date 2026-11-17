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

oo::class create ::AnimationInterfaceFactoryInterfaceComposite {
    superclass ::JObject
}

oo::define ::AnimationInterfaceFactoryInterfaceComposite {
    method initFields_AnimationInterfaceFactoryInterfaceComposite {} {
        my jset animationInterfaceFactoryInterfaceArray {}
        
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray} {
        next
        my initFields_AnimationInterfaceFactoryInterfaceComposite
        my jset animationInterfaceFactoryInterfaceArray $basicAnimationInterfaceFactoryInterfaceArray
    }
    

    method getInstance {instanceId} {
        return [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
    }
    

    method getAnimationInterfaceFactoryInterfaceArray {} {
        return [my jget animationInterfaceFactoryInterfaceArray]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::AnimationInterfaceFactoryInterfaceComposite {
}


