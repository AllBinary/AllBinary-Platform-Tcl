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
# package org.allbinary.audio

oo::class create ::AudioContentTypeDataFactory {
    superclass ::JObject
}

oo::define ::AudioContentTypeDataFactory {
    method initFields_AudioContentTypeDataFactory {} {
        my jset MIME_AUDIO_TONE {}
        my jset MIME_AUDIO_AMR {}
        my jset MIME_AUDIO_AMR_WB {}
        my jset MIME_AUDIO_WAV {}
        my jset MIME_AUDIO_MIDI {}
        my jset MIME_AUDIO_SP_MIDI {}
        my jset MIME_AUDIO_TONE [::AudioContentTypeData new "audio/x-tone-seq"]
        my jset MIME_AUDIO_AMR [::AudioContentTypeData new "audio/amr"]
        my jset MIME_AUDIO_AMR_WB [::AudioContentTypeData new "audio/amr-wb"]
        my jset MIME_AUDIO_WAV [::AudioContentTypeData new "audio/x-wav"]
        my jset MIME_AUDIO_MIDI [::AudioContentTypeData new "audio/midi"]
        my jset MIME_AUDIO_SP_MIDI [::AudioContentTypeData new "audio/sp-midi"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AudioContentTypeDataFactory
    }
}

namespace eval ::AudioContentTypeDataFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AudioContentTypeDataFactory new]
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
        return [::AudioContentTypeDataFactory::staticGet_instance]
    }
}


