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
# package org.allbinary.globals

oo::class create ::Globals {
    superclass ::JObject
}

oo::define ::Globals {
    method initFields_Globals {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_Globals
    }
    

    method init {classLoader pathString} {
        set commonStrings [::CommonStrings::getInstance]
        set appUrlGlobals [::AppUrlGlobals new]
        $appUrlGlobals setWebappPath $pathString
        [::::staticGet_URLGLOBALS] init $appUrlGlobals
        ::WebappClassLoaderInfo::setLoader $classLoader
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Setting Up AllBinary System Configuration Args: "
        $stringBuffer append $pathString
        $stringBuffer append " ClassLoader: "
        $stringBuffer append [jclassname $classLoader]
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget INIT]
        set stringValidationUtil [::StringValidationUtil::getInstance]
        if {[$stringValidationUtil isEmpty $pathString]} {
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append "No Path Provided. Using Process Path: "
            $stringBuffer append $pathString
            $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
            $stringBuffer append [[::CommonSeps::getInstance] jget EQUALS]
            $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
            $stringBuffer append [[::::staticGet_URLGLOBALS] getWebappPath]
            [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget INIT]
        }
        $stringBuffer delete 0 [$stringBuffer length]
        $stringBuffer append "Webapp Path Set To: "
        $stringBuffer append [[::::staticGet_URLGLOBALS] getWebappPath]
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget INIT]
    }
}

namespace eval ::Globals {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::Globals new]
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
        return [::Globals::staticGet_instance]
    }
}


