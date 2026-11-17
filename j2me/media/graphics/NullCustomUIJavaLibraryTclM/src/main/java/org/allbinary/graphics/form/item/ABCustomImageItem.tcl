# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABCustomImageItem {
    superclass ::ABCustomItem
}

oo::define ::ABCustomImageItem {
    method initFields_ABCustomImageItem {} {
        my jset yOffset 0
        my jset yOffset 0
        return
    }
    

    constructor {label image layout altText basicColor yOffset} {
        next $label $basicColor $basicColor
        my initFields_ABCustomImageItem
    }
    

    method getImage {} {
        return [::NullImage::staticGet_NULL_IMAGE]
    }
}

namespace eval ::ABCustomImageItem {
}


