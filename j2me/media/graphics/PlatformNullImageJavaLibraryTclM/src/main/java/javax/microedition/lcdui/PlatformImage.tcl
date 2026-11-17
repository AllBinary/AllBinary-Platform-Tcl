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

#PlatformNullImageJavaLibrary
oo::class create ::PlatformImage {
    superclass ::JObject
}

oo::define ::PlatformImage {
    method initFields_PlatformImage {} {
        return
    }

    constructor {} {
        next
        my initFields_PlatformImage
    }
    

    method getImage {graphicsSurface2} {
        return [::NullImage::staticGet_NULL_IMAGE]
    }
    

    method getSurfaceWidth {graphicsSurface2 width} {
        return $width
    }
    

    method getSurfaceHeight {graphicsSurface2 height} {
        return $height
    }
    

    method getWidth {image width} {
        return $width
    }
    

    method getHeight {image height} {
        return $height
    }
    

    method getGraphics {graphicsSurface width height image} {
        error [jexception RuntimeException {}]
    }
    

    method drawImage {image x y anchor g2 g} {
    }
    

    method drawRegion {image x_src y_src width height transform x_dst y_dst anchor g} {
    }
    

    method getRGB {argb offset scanlength x y width height image} {
    }
    

    method setRGB {argb offset scanlength x y width height image} {
    }
    

    method getData {image} {
        return [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
    }
}

namespace eval ::PlatformImage {
}


