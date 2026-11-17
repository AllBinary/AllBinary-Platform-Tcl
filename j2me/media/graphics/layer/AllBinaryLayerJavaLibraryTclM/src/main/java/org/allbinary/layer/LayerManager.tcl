# Generated Code Do Not Modify
# package org.allbinary.layer

oo::class create ::LayerManager {
    superclass ::JObject
}

oo::define ::LayerManager {
    method initFields_LayerManager {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset systemWrapper {}
        my jset tsUtil {}
        my jset layerManagerLogging {}
        my jset list {}
        my jset anyType {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset systemWrapper [::ABSystemWrapper::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        
        my jset list [::BasicArrayListD new]
        my jset anyType [::SynchObject new]
        return
    }
    

    constructor {layerManagerLogging} {
        next
        my initFields_LayerManager
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset layerManagerLogging $layerManagerLogging
    }
    

    method contains {layerInterface} {
        return [[my jget list] contains $layerInterface]
    }
    

    method update {layerInterface} {
        set had [[my jget list] remove $layerInterface]
        if {$had} {
            set nextLayerInterface {}
            set size [[my jget list] size]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set nextLayerInterface [[my jget list] get $index]
                if {[expr {[$layerInterface getZP] > [$nextLayerInterface getZP]}]} {
                    [my jget list] addAt $index $layerInterface
                    return
                }
            }
            [my jget list] add $layerInterface
        }
    }
    

    method insert {layerInterface} {
        set nextLayerInterface {}
        set size [[my jget list] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextLayerInterface [[my jget list] get $index]
            if {[expr {[$layerInterface getZP] > [$nextLayerInterface getZP]}]} {
                my appendAt $layerInterface $index
                return
            }
        }
        my append $layerInterface
    }
    

    method append {layerInterface} {
        [my jget layerManagerLogging] append $layerInterface
        [my jget list] add $layerInterface
    }
    

    method appendAt {layerInterface index} {
        [my jget layerManagerLogging] appendAt $layerInterface $index
        [my jget list] addAt $index $layerInterface
    }
    

    method remove {layerInterface} {
        if {1} {
            [my jget layerManagerLogging] remove $layerInterface
            set result [[my jget list] remove $layerInterface]
            [my jget layerManagerLogging] removeResult [self] $layerInterface $result
        }
    }
    

    method getLayerAt {index} {
        return [[[my jget list] jget objectArray] get $index]
    }
    

    method getSize {} {
        return [[my jget list] size]
    }
    

    method cleanup {} {
        if {1} {
            [my jget list] clear
            [my jget layerManagerLogging] clear
            [my jget tsUtil] gc
            [my jget tsUtil] gc
        }
    }
    

    method paint {g x y} {
        if {1} {
            set comp {}
            for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
                set comp [[[my jget list] jget objectArray] get $index]
                if {[expr {[expr {$comp ne {}}] && [$comp isVisible]}]} {
                    $comp paint $g
                }
            }
        }
    }
}

namespace eval ::LayerManager {
}


