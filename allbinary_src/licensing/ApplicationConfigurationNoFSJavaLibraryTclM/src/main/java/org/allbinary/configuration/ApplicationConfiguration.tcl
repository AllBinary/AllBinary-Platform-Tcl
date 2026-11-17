# Generated Code Do Not Modify
# package org.allbinary.configuration

oo::class create ::ApplicationConfiguration {
    superclass ::JObject
}

oo::define ::ApplicationConfiguration {
    method initFields_ApplicationConfiguration {} {
        my jset logUtil {}
        my jset fullscreen false
        my jset showTitleBar false
        my jset progressBarView false
        my jset logUtil [::LogUtil::getInstance]
        my jset fullscreen true
        my jset showTitleBar false
        my jset progressBarView false
        return
    }
    
    

    constructor {} {
        next
        my initFields_ApplicationConfiguration
        try {
            my read
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method read {} {
        my setFullscreen true
        my setProgressBarView false
        my setShowTitleBar false
        [my jget logUtil] putF [string cat "Read Configuration: " [my toString]] [self] "read"
    }
    

    method write {} {
    }
    

    method update {gameFeature} {
        if {[expr {$gameFeature eq [[::MainFeatureFactory::getInstance] jget FULL_SCREEN]}]} {
            set features [::Features::getInstance]
            if {[$features isFeature $gameFeature]} {
                if {[expr {![my isFullscreen]}]} {
                    my setFullscreen true
                    my write
                }
            } else {
                if {[my isFullscreen]} {
                    my setFullscreen false
                    my write
                }
            }
        }
    }
    

    method setFullscreen {fullscreen} {
        my jset fullscreen $fullscreen
    }
    

    method isFullscreen {} {
        return [my jget fullscreen]
    }
    

    method setShowTitleBar {showTitleBar} {
        my jset showTitleBar $showTitleBar
    }
    

    method isShowTitleBar {} {
        return [my jget showTitleBar]
    }
    

    method setProgressBarView {progressBarView} {
        my jset progressBarView $progressBarView
    }
    

    method isProgressBarView {} {
        return [my jget progressBarView]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "isFullscreen: "
        $stringBuffer appendboolean [my isFullscreen]
        $stringBuffer append " isProgressBarView: "
        $stringBuffer appendboolean [my isProgressBarView]
        $stringBuffer append " isShowTitleBar: "
        $stringBuffer appendboolean [my isShowTitleBar]
        return [$stringBuffer toString]
    }
}

namespace eval ::ApplicationConfiguration {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::ApplicationConfiguration::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ApplicationConfiguration::staticSet_instance [::ApplicationConfiguration new]
        }
        return [::ApplicationConfiguration::staticGet_instance]
    }
}


