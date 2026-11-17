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
        my jset FILE {}
        my jset logUtil [::LogUtil::getInstance]
        my jset fullscreen true
        my jset showTitleBar false
        my jset progressBarView false
        my jset FILE "ReloadConfiguration.dat"
        return
    }
    
    

    constructor {} {
        next
        my initFields_ApplicationConfiguration
        try {
            if {[[::FileFactory::getInstance] isFile [my jget FILE]]} {
                my read
            } else {
                my write
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method read {} {
        set fileInputStreamFactory [::FileStreamFactory::getInstance]
        set fileInputStream [$fileInputStreamFactory getFileInputStreamInstance [[::StringUtil::getInstance] jget EMPTY_STRING] [my jget FILE]]
        set dataInputStream [::AbDataInputStream new $fileInputStream]
        set fullScreen [$dataInputStream readInt]
        if {[expr {$fullScreen == 0}]} {
            my setFullscreen false
        } elseif {[expr {$fullScreen == 1}]} {
            my setFullscreen true
        } else {
            error [jexception Exception "Invalid FullScreen ActivityConfiguration"]
        }
        set progressBarView [$dataInputStream readInt]
        if {[expr {$progressBarView == 0}]} {
            my setProgressBarView false
        } elseif {[expr {$progressBarView == 1}]} {
            my setProgressBarView true
        } else {
            error [jexception Exception "Invalid ProgressBarView ActivityConfiguration"]
        }
        set showTitleBar [$dataInputStream readInt]
        if {[expr {$showTitleBar == 0}]} {
            my setShowTitleBar false
        } elseif {[expr {$showTitleBar == 1}]} {
            my setShowTitleBar true
        } else {
            error [jexception Exception "Invalid ShowTitleBar ActivityConfiguration"]
        }
        [my jget logUtil] putF [string cat "Read Configuration: " [my toString]] [self] "read"
    }
    

    method write {} {
        set closeable [::NullCloseable::staticGet_NULL_CLOSEABLE]
        try {
            [my jget logUtil] putF [string cat "Write Configuration: " [my toString]] [self] "write"
            set fileInputStreamFactory [::FileStreamFactory::getInstance]
            set fileOutputStream [$fileInputStreamFactory getFileOutputStreamInstance [[::StringUtil::getInstance] jget EMPTY_STRING] [my jget FILE]]
            set dataOutputStream [::AbDataOutputStream new $fileOutputStream]
            set closeable $dataOutputStream
            if {[my isFullscreen]} {
                $dataOutputStream writeInt 1
            } else {
                $dataOutputStream writeInt 0
            }
            if {[my isProgressBarView]} {
                $dataOutputStream writeInt 1
            } else {
                $dataOutputStream writeInt 0
            }
            if {[my isShowTitleBar]} {
                $dataOutputStream writeInt 1
            } else {
                $dataOutputStream writeInt 0
            }
            $dataOutputStream flush
        } on error {e} {
            error $e
        } finally {
            [::StreamUtil::getInstance] close $closeable
        }
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


