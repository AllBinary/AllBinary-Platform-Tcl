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
# package org.allbinary.game.midlet

oo::class create ::GameMidlet {
    superclass ::ProgressMidlet
}

oo::define ::GameMidlet {
    method initFields_GameMidlet {} {
        my jset enumerationUtil {}
        my jset basicColorFactory {}
        my jset features {}
        my jset midletStrings {}
        my jset myCommandsFactory {}
        my jset gameStrings {}
        my jset gameAdStateFactory {}
        my jset gameStateFactory {}
        my jset tsUtil {}
        my jset DISPLAYABLE {}
        my jset COMMAND_NAME {}
        my jset NO_COMMAND {}
        my jset NO_DISPLAYABLE {}
        my jset COMMAND_ACTION {}
        my jset PAUSE_APP_BACKGROUND {}
        my jset UN_PAUSE_APP_BACKGROUND {}
        my jset aboutCommandProcessor {}
        my jset webCommandProcessor {}
        my jset gameMidletStateFactory {}
        my jset gameStartTimeHelper {}
        my jset fullScreenUtil {}
        my jset debugInterface {}
        my jset allbinaryGameCanvasRunnableInterface {}
        my jset thread {}
        my jset loadGameForm {}
        my jset isFullScreen false
        my jset resized false
        my jset startedBefore false
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        my jset features [::Features::getInstance]
        my jset midletStrings [::MidletStrings::getInstance]
        my jset myCommandsFactory [::MyCommandsFactory::getInstance]
        my jset gameStrings [::GameStrings::getInstance]
        my jset gameAdStateFactory [::GameAdStateFactory::getInstance]
        my jset gameStateFactory [::GameStateFactory::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset DISPLAYABLE " Displayable: "
        my jset COMMAND_NAME "command Name/Label: "
        my jset NO_COMMAND "No Command"
        my jset NO_DISPLAYABLE "No Displayable"
        my jset COMMAND_ACTION [[[[::StringMaker new] append "GameMidlet::"] append [[my jget midletStrings] jget COMMAND_ACTION]] toString]
        my jset PAUSE_APP_BACKGROUND "pauseAppBackground"
        my jset UN_PAUSE_APP_BACKGROUND "unPauseAppBackground"
        my jset aboutCommandProcessor [::AboutCommandProcessor::getInstance]
        my jset webCommandProcessor [::WebCommandProcessor::getInstance]
        my jset gameMidletStateFactory [::GameMidletStateFactory::getInstance]
        my jset gameStartTimeHelper [::TimeDelayHelper new 240]
        my jset fullScreenUtil [::FullScreenUtil::getInstance]
        
        my jset allbinaryGameCanvasRunnableInterface [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]
        my jset thread [::NullThread::staticGet_NULL_THREAD]
        
        my jset isFullScreen false
        my jset resized false
        my jset startedBefore false
        return
    }
    

    constructor {clientInformationFactory} {
        next $clientInformationFactory
        my initFields_GameMidlet
        [::SmallIntegerSingletonFactory::getInstance] initWithRange 0x291 6
        my jset loadGameForm [::CommandForm::getNullCommandForm]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas init [self]
        [::GameFeatureEventHandler::getInstance] addListenerInterface [::ChangedGameFeatureListener::getInstance]
        [::GamePersistanceSingleton::getInstance] clear
        my jset debugInterface [::DebugFactory::getInstance]
        my init
    }
    

    method init {} {
    }
    

    method setDemo {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method createGame {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method mediaShutdown {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method stopAll {} {
    }
    

    method pauseApp {} {
        my pauseAppBackground true
        set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
        [$gameAdState getAdvertisements] stopAll
    }
    

    method pauseAppBackground {background} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [my jget PAUSE_APP_BACKGROUND]
        if {[expr {[my jget allbinaryGameCanvasRunnableInterface] ne [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]}]} {
            [my jget allbinaryGameCanvasRunnableInterface] pause
        } else {
            [my jget logUtil] putF "<<<<<< Null" [self] [my jget PAUSE_APP_BACKGROUND]
        }
        [::AllBinarySensorManager::getInstance] shutdown
    }
    

    method unPauseApp {} {
        my unPauseAppBackground true
        set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
        [$gameAdState getAdvertisements] startAll
    }
    

    method unPauseAppBackground {background} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [my jget UN_PAUSE_APP_BACKGROUND]
        [::AllBinarySensorManager::getInstance] init
        set gameCanvasRunnableInterface [my jget allbinaryGameCanvasRunnableInterface]
        if {[expr {$gameCanvasRunnableInterface ne [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]}]} {
            $gameCanvasRunnableInterface unPause
        } else {
            [my jget logUtil] putF "<<<<<< Null" [self] [my jget UN_PAUSE_APP_BACKGROUND]
        }
    }
    

    method destroyAppInRunnable {unconditional isProgress} {
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        if {$isProgress} {
            $progressCanvas start
            my commandAction [[my jget myCommandsFactory] jget SET_DISPLAYABLE] $progressCanvas
        }
        my destroyApp $unconditional
        if {$isProgress} {
            $progressCanvas end
        }
    }
    

    method destroyApp {unconditional} {
        set METHOD_NAME "GameMidlet::destroyApp"
        try {
            ::PreLogUtil::put [[::GameStatisticsFactory::getInstance] toString] [self] $METHOD_NAME
            set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
            [$gameAdState getAdvertisements] stopAll
            if {[expr {![my isDestroyed]}]} {
                my stopGameCanvasRunnableInterface
                my setGameCanvasRunnableInterface [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]
                my mediaShutdown
            } else {
                [my jget logUtil] putF "Midlet Managment Error: Midlet Should Only Be Destroyed Once" [self] $METHOD_NAME
            }
            next true
            ::PreLogUtil::put [[my jget commonStrings] jget END] [self] $METHOD_NAME
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] $METHOD_NAME $e
        }
        [my jget logUtil] putF [[my jget commonStrings] jget END] [self] $METHOD_NAME
    }
    

    method startApp {} {
        try {
            set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
            [$gameAdState getAdvertisements] startAll
            set START_APP "startApp"
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] $START_APP
            set gameCanvasRunnableInterface [my jget allbinaryGameCanvasRunnableInterface]
            if {[expr {$gameCanvasRunnableInterface eq [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]}]} {
                [my jget gameMidletStateFactory] setCurrentGameState [[my jget gameStateFactory] jget NO_GAME_STATE]
                my setDemo
            } else {
                [my jget logUtil] putF "GameCanvasRunnableInterface is available" [self] $START_APP
                if {[expr {$gameCanvasRunnableInterface eq [my getCurrentDisplayable]}]} {
                    my unPauseAppBackground false
                } else {
                    [my jget logUtil] putF "GameCanvasRunnableInterface is not current displayable" [self] $START_APP
                }
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "startApp" $e
            my destroyApp false
            my notifyDestroyed
        }
    }
    

    method commandAction {command displayable} {
        try {
            set displayableAsString [my jget NO_DISPLAYABLE]
            if {[expr {$displayable ne {}}]} {
                set displayableAsString [$displayable toString]
            }
            set label [my jget NO_COMMAND]
            if {[expr {$command ne {}}]} {
                set label [$command getLabel]
            }
            ::PreLogUtil::put [[[[[[::StringMaker new] append [my jget COMMAND_NAME]] append $label] append [my jget DISPLAYABLE]] append $displayableAsString] toString] [self] [my jget COMMAND_ACTION]
            set gameCommandsFactory [::GameCommandsFactory::getInstance]
            set allbinaryGameCanvasRunnableInterface [my jget allbinaryGameCanvasRunnableInterface]
            set gameCanvasRunnableInterface $allbinaryGameCanvasRunnableInterface
            if {[expr {$command eq [$gameCommandsFactory jget SHOW_GAME_CANVAS]}]} {
                if {[expr {[expr {[[my getDisplay] getCurrent] ne $gameCanvasRunnableInterface}] && [expr {[$allbinaryGameCanvasRunnableInterface getType] != [[::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE] getType]}]}]} {
                    my setDisplay $gameCanvasRunnableInterface
                }
                my unPauseAppBackground false
            } elseif {[expr {$command eq [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS]}]} {
                set menuListener $displayable
                $menuListener close
                my setDisplay $gameCanvasRunnableInterface
                my unPauseAppBackground false
            } elseif {[expr {$command eq [$gameCommandsFactory jget EXIT_COMMAND]}]} {
                if {[expr {[[[::GameMidletEventHandler::getInstance] getEventListenerInterfaceListP] size] == 0}]} {
                    my exitProgress true
                }
                [::GameMidletEventHandler::getInstance] fireEvent [::DemoGameMidletEvent new [self] [[::DemoGameMidletStateFactory::getInstance] jget NONE]]
            } elseif {[expr {$command eq [$gameCommandsFactory jget EXIT_WITHOUT_PROGRESS_COMMAND]}]} {
                my exitProgress false
            } elseif {[expr {[expr {[expr {$command eq [$gameCommandsFactory jget START_COMMAND]}] || [expr {$command eq [$gameCommandsFactory jget RESTART_COMMAND]}]}] || [expr {$command eq [$gameCommandsFactory jget CONTINUE_COMMAND]}]}]} {
                if {[expr {[expr {[[my jget gameMidletStateFactory] getCurrentGameState] != [[my jget gameStateFactory] jget PLAYING_GAME_STATE]}] || [expr {$command eq [$gameCommandsFactory jget RESTART_COMMAND]}]}]} {
                    if {[[my jget gameStartTimeHelper] isTimeTNT]} {
                        if {[expr {[expr {$command eq [$gameCommandsFactory jget START_COMMAND]}] && [my isDemoLoading]}]} {
                            [my jget logUtil] putF "Trying to Start Game Before Loading Complete" [self] [[my jget midletStrings] jget COMMAND_ACTION]
                        } else {
                            my jset startedBefore true
                            my createGame
                            [my jget gameMidletStateFactory] setCurrentGameState [[my jget gameStateFactory] jget PLAYING_GAME_STATE]
                        }
                    } else {
                        [my jget logUtil] putF "Starting Game Too Often" [self] [[my jget midletStrings] jget COMMAND_ACTION]
                    }
                } else {
                    [my jget logUtil] putF "Already in playing state" [self] [my jget COMMAND_ACTION]
                }
            } elseif {[expr {$command eq [$gameCommandsFactory jget BUY_COMMAND]}]} {
                set inApplicationPurchaseFactory [::InApplicationPurchaseFactory::getInstance]
                set list [[::LockableFeatureFactory::getInstance] getList]
                set lockableFeature [$list get 0]
                if {[expr {[expr {[$list size] > 0}] && [expr {![$inApplicationPurchaseFactory isPurchased $lockableFeature]}]}]} {
                    $inApplicationPurchaseFactory purchase $lockableFeature
                } else {
                    [::TextNotificationUtil::getInstance] fireSuccess "Already Purchased"
                }
            } elseif {[expr {$command eq [$gameCommandsFactory jget QUIT_COMMAND]}]} {
                if {[[my jget gameStartTimeHelper] isTimeTNT]} {
                    if {[jinstanceof $displayable ::HighScoreTextBox]} {
                        set menuListener $displayable
                        $menuListener close
                    }
                    my stopGameCanvasRunnableInterface
                    [my jget gameMidletStateFactory] setCurrentGameState [[my jget gameStateFactory] jget NO_GAME_STATE]
                    my setDemo
                }
            } elseif {[expr {$command eq [[my jget myCommandsFactory] jget RESUME_COMMAND]}]} {
                my unPauseAppBackground false
            } elseif {[expr {$command eq [[my jget myCommandsFactory] jget PAUSE_COMMAND]}]} {
                my pauseAppBackground false
            } elseif {[expr {$command eq [[my jget myCommandsFactory] jget SET_DISPLAYABLE]}]} {
                my pauseAppBackground false
                my setDisplay $displayable
            } elseif {[expr {$command eq [$gameCommandsFactory jget SET_MENU_DISPLAYABLE]}]} {
                my pauseAppBackground false
                set menuListener $displayable
                $menuListener open
                my setDisplay $displayable
            } elseif {[expr {$command eq [$gameCommandsFactory jget START_TRACE]}]} {
                [my jget debugInterface] start
                set gameCanvas $allbinaryGameCanvasRunnableInterface
                $gameCanvas addCommand [$gameCommandsFactory jget STOP_TRACE]
                $gameCanvas removeCommand [$gameCommandsFactory jget START_TRACE]
            } elseif {[expr {$command eq [$gameCommandsFactory jget STOP_TRACE]}]} {
                my pauseAppBackground false
                [my jget debugInterface] stop
                my unPauseAppBackground false
                set gameCanvas $allbinaryGameCanvasRunnableInterface
                $gameCanvas addCommand [$gameCommandsFactory jget START_TRACE]
                $gameCanvas removeCommand [$gameCommandsFactory jget STOP_TRACE]
            } elseif {[expr {$command eq [$gameCommandsFactory jget DEFAULT_OPTIONS]}]} {
                set tempDisplayable $displayable
                if {[jinstanceof $tempDisplayable ::GameOptionsForm]} {
                    [::GameFeatureFormUtil::getInstance] setDefault $tempDisplayable
                }
            } elseif {[expr {$command eq [::GameInputMappingInstructionsCanvas::staticGet_DISPLAY]}]} {
                set tempDisplayable $displayable
                if {[jinstanceof $tempDisplayable ::GameInputMappingCanvas]} {
                    set gameInputMappingCanvas $tempDisplayable
                    $gameInputMappingCanvas update
                }
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my getInputMappingInstructionsCanvas]
            } elseif {[[::HighScoreCommandsFactory::getInstance] isHighScoreCommand $command]} {
                set tempDisplayable $displayable
                if {[jinstanceof $tempDisplayable ::HighScoresCanvas]} {
                    set highScoresCanvas $tempDisplayable
                    $highScoresCanvas updateCommand $command
                }
            } elseif {[expr {$command eq [[::HighScoreCommands::getInstance] jget DISPLAY]}]} {
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my createHighScoresCanvas]
            } elseif {[expr {$command eq [::GameInputMappingInstructionsCanvas::staticGet_CLOSE]}]} {
                set menuListener $displayable
                $menuListener close
                my commandAction [::GameInputMappingCanvas::staticGet_DISPLAY] [::NullCanvas::staticGet_NULL_CANVAS]
            } elseif {[expr {$command eq [::GameInputMappingCanvas::staticGet_DISPLAY]}]} {
                if {[::J2MEUtil::isHTML]} {
                    my pauseAppBackground false
                }
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my getInputMappingCanvas]
            } elseif {[expr {$command eq [::GameInputMappingCanvas::staticGet_DEFAULT]}]} {
                set tempDisplayable $displayable
                if {[jinstanceof $tempDisplayable ::GameInputMappingCanvas]} {
                    set gameInputMappingCanvas $tempDisplayable
                    $gameInputMappingCanvas setDefault
                }
            } elseif {[expr {$command eq [::InGameOptionsForm::staticGet_DISPLAY]}]} {
                my pauseAppBackground false
                set progressCanvas [::ProgressCanvasFactory::getInstance]
                $progressCanvas addNormalPortion 50 "In Game Options"
                set layerManager [my createGameLayerManager]
                set inGameOptionsFormFactory [::InGameOptionsFormFactory::getInstance]
                $inGameOptionsFormFactory init [self] [::InGameFeatures new] "Options In Game" [$layerManager getBackgroundBasicColor] [$layerManager getForegroundBasicColor]
                set inGameOptionsForm [$inGameOptionsFormFactory get]
                $inGameOptionsForm setItemStateListener $allbinaryGameCanvasRunnableInterface
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] $inGameOptionsForm
            } elseif {[expr {$command eq [::InGameOptionsForm::staticGet_DEFAULT]}]} {
                set inGameOptionsForm [[::InGameOptionsFormFactory::getInstance] get]
                [::GameFeatureFormUtil::getInstance] setDefault $inGameOptionsForm
            } elseif {[expr {$command eq [$gameCommandsFactory jget DISPLAY_OPTIONS]}]} {
                ::AllBinaryMediaManager::setMuted true
                my stopAll
                set mainFeatureFactory [::MainFeatureFactory::getInstance]
                my jset isFullScreen [[my jget features] isFeature [$mainFeatureFactory jget FULL_SCREEN]]
                [::ResizableListenerHandler::getInstance] fireEvent true
                my setResized false
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my getGameOptionsForm]
            } elseif {[expr {$command eq [$gameCommandsFactory jget CLOSE_OPTIONS]}]} {
                [::ResizableListenerHandler::getInstance] fireEvent false
                my commandAction [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS] $displayable
                set stringBuffer [::StringMaker new]
                $stringBuffer append "Close isFullScreen/change: "
                $stringBuffer appendboolean [my jget isFullScreen]
                $stringBuffer appendboolean [[my jget fullScreenUtil] isScreenChange [my jget isFullScreen]]
                $stringBuffer append " isResized: "
                $stringBuffer appendboolean [my isResized]
                ::PreLogUtil::put [$stringBuffer toString] [self] [my jget COMMAND_ACTION]
                if {[expr {[my isResized] || [[my jget fullScreenUtil] isScreenChange [my jget isFullScreen]]}]} {
                    my updateFullScreen
                }
                ::AllBinaryMediaManager::setMuted false
            } elseif {[expr {$command eq [$gameCommandsFactory jget DISPLAY_LOAD_FORM]}]} {
                my pauseAppBackground false
                set keyValuePersistance [::GamePersistanceSingleton::getInstance]
                $keyValuePersistance clear
                $keyValuePersistance loadAll [my jget abeClientInformation]
                if {[expr {[my getLoadGameForm] eq [::CommandForm::getNullCommandForm]}]} {
                    set layerManager [my createGameLayerManager]
                    my setLoadGameForm [::LoadGameForm new [self] "Load Game" [$layerManager getBackgroundBasicColor] [$layerManager getForegroundBasicColor]]
                } else {
                    [my getLoadGameForm] update
                }
                my commandAction [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my getLoadGameForm]
            } elseif {[expr {$command eq [$gameCommandsFactory jget LOAD_FILE]}]} {
                set loadGameForm [my getLoadGameForm]
                set index [$loadGameForm getSelectedId]
                if {[expr {$index != [expr {-1}]}]} {
                    set keyValuePersistance [::GamePersistanceSingleton::getInstance]
                    my setStartStateHashtable [$keyValuePersistance get $index]
                    set menuListener [my getLoadGameForm]
                    $menuListener close
                    ::PreLogUtil::put [[::BasicMotionGesturesHandler::getInstance] toString] [self] [my jget COMMAND_ACTION]
                    my commandAction [$gameCommandsFactory jget START_COMMAND] [::NullCanvas::staticGet_NULL_CANVAS]
                    ::PreLogUtil::put [[::BasicMotionGesturesHandler::getInstance] toString] [self] [my jget COMMAND_ACTION]
                }
            } elseif {[expr {$command eq [$gameCommandsFactory jget DELETE_FILE]}]} {
                set loadGameForm [my getLoadGameForm]
                set index [$loadGameForm getSelectedText]
                if {[expr {$index != [expr {-1}]}]} {
                    set keyValuePersistance [::GamePersistanceSingleton::getInstance]
                    $keyValuePersistance delete [my jget abeClientInformation] $index
                    $keyValuePersistance clear
                    $keyValuePersistance loadAllSize [my jget abeClientInformation] 1
                    [my getLoadGameForm] update
                }
            } elseif {[expr {$command eq [$gameCommandsFactory jget SAVE]}]} {
                set keyValuePersistance [::GamePersistanceSingleton::getInstance]
                my pauseAppBackground false
                $keyValuePersistance save [my jget abeClientInformation] [my getCurrentStateHashtable]
                my unPauseAppBackground false
            } elseif {[expr {$command eq [::HighScoreUtil::staticGet_SUBMIT_TEXTBOX_COMMAND]}]} {
                [my jget logUtil] putF "Submitted Score" [self] [my jget COMMAND_ACTION]
                if {[jinstanceof $displayable ::HighScoreTextBox]} {
                    set highScoreTextBox $displayable
                    $highScoreTextBox jset submitted true
                }
                $allbinaryGameCanvasRunnableInterface setHighScoreSubmitted true
                my commandAction [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS] $displayable
            } elseif {[expr {$command eq [$gameCommandsFactory jget DISPLAY_ABOUT]}]} {
                [my jget aboutCommandProcessor] process [self] [$gameCommandsFactory jget SET_MENU_DISPLAYABLE] [my getAboutCanvas]
            } elseif {[expr {$command eq [$gameCommandsFactory jget OPEN_WEB_URL]}]} {
                [my jget webCommandProcessor] process [self] [$gameCommandsFactory jget OPEN_WEB_URL] [::NullCanvas::staticGet_NULL_CANVAS]
            } elseif {[expr {$command eq [$gameCommandsFactory jget TOGGLE_KEYBOARD]}]} {
                set virtualKeyboardEventHandler [::VirtualKeyboardEventHandler::getInstance]
                $virtualKeyboardEventHandler fireEvent [$virtualKeyboardEventHandler jget SHOW_EVENT]
            } elseif {[expr {[[my jget tsUtil] compareTo [$command getLabel] [[$gameCommandsFactory jget TOGGLE_FULLSCREEN] getLabel]] == 0}]} {
                set mainFeatureFactory [::MainFeatureFactory::getInstance]
                set isFullScreen [[my jget features] isFeature [$mainFeatureFactory jget FULL_SCREEN]]
                if {$isFullScreen} {
                    [my jget features] removeDefault [$mainFeatureFactory jget FULL_SCREEN]
                } else {
                    [my jget features] addDefault [$mainFeatureFactory jget FULL_SCREEN]
                }
                my updateFullScreen
            }
        } on error {e} {
            [my jget logUtil] put [[[[::StringMaker new] append [[my jget commonStrings] jget EXCEPTION_LABEL]] append [$command getLabel]] toString] [self] [[my jget midletStrings] jget COMMAND_ACTION] $e
            if {[expr {$command ne [[::GameCommandsFactory::getInstance] jget EXIT_COMMAND]}]} {
                my exitProgress false
            }
        }
    }
    

    method updateFullScreen {} {
        set mainFeatureFactory [::MainFeatureFactory::getInstance]
        set isFullScreen [[my jget features] isFeature [$mainFeatureFactory jget FULL_SCREEN]]
        set displayable [[my getDisplay] getCurrent]
        if {[jinstanceof $displayable ::Canvas]} {
            set canvas $displayable
            $canvas setFullScreenMode $isFullScreen
        }
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method getInputMappingInstructionsCanvas {} {
        return [::GameInputMappingInstructionsCanvas new [self] [my createGameLayerManager]]
    }
    

    method getInputMappingCanvas {} {
        return [::GameInputMappingCanvas new [my jget abeClientInformation] [self] [my createGameLayerManager] [my getHelpPaintable]]
    }
    

    method getAboutCanvas {} {
        return [::BasicPaintablesCanvas new [self] [[::CanvasStrings::getInstance] jget ABOUT] [my createGameLayerManager] [[::AboutPaintableFactory::getInstance] jget paintableArray]]
    }
    

    method getHelpPaintable {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method createHighScoresCanvas {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method startGameCanvasRunnableInterface {} {
        set threadFactoryUtil [::ThreadFactoryUtil::getInstance]
        my jset thread [$threadFactoryUtil getInstanceGameCanvasRunnable [my jget allbinaryGameCanvasRunnableInterface]]
        [my jget logUtil] putF [[[[::StringMaker new] append "Thread Priority: "] appendint [jint [[my jget thread] getPriority]]] toString] [self] "startGameCanvasRunnableInterface"
        [my jget allbinaryGameCanvasRunnableInterface] setThread [my jget thread]
        $threadFactoryUtil start [my jget thread]
    }
    

    method stopGameCanvasRunnableInterface {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget gameStrings] jget STOP_GAME_CANVAS_RUNNABLE_INTERFACE]
        [::GameNotificationEventHandler::getInstance] removeAllListeners
        [::ColorChangeEventHandler::getInstance] removeAllListeners
        ::GameEventHandlerUtil::removeAllListeners
        set gameCanvasRunnableInterface [my jget allbinaryGameCanvasRunnableInterface]
        if {[expr {$gameCanvasRunnableInterface ne [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]}]} {
            [my jget logUtil] putF [[[[::StringMaker new] append "Set Running False: "] append [$gameCanvasRunnableInterface toString]] toString] [self] [[my jget gameStrings] jget STOP_GAME_CANVAS_RUNNABLE_INTERFACE]
            $gameCanvasRunnableInterface setRunning false
        } else {
            [my jget logUtil] putF "StopGame - Could Not Stop" [self] [[my jget gameStrings] jget STOP_GAME_CANVAS_RUNNABLE_INTERFACE]
        }
        [::ThreadUtil::getInstance] join [my jget thread]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        if {[[my jget features] isFeature [[::MainFeatureFactory::getInstance] jget LOAD_ALL]]} {
            $progressCanvas addNormalPortion 50 "Stopped Game Runnable"
        } else {
            $progressCanvas addNormalPortion 50 "Stopped Main Runnable"
        }
        [my jget logUtil] putF [[my jget commonStrings] jget END] [self] [[my jget gameStrings] jget STOP_GAME_CANVAS_RUNNABLE_INTERFACE]
    }
    

    method getGameCanvasRunnableInterface {} {
        return [my jget allbinaryGameCanvasRunnableInterface]
    }
    

    method setGameCanvasRunnableInterface {gameCanvasRunnableInterface} {
        my jset allbinaryGameCanvasRunnableInterface $gameCanvasRunnableInterface
    }
    

    method createGameLayerManager {} {
        set gameInfo [::GameInfo new [[::GameTypeFactory::getInstance] jget SINGLE_PLAYER] [::GameMode::staticGet_SERVER] [[::PlayerTypesFactory::getInstance] jget PLAYER_TYPE_ONE] 1 1]
        return [::AllBinaryGameLayerManager new [[my jget basicColorFactory] jget BLACK] [[my jget basicColorFactory] jget WHITE] $gameInfo]
    }
    

    method getGameOptionsForm {} {
        set layerManager [my createGameLayerManager]
        return [[::GameOptionsFormFactory::getInstance] init [self] "Game Options" [$layerManager getBackgroundBasicColor] [$layerManager getForegroundBasicColor]]
    }
    

    method save {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget SAVE]
        set hashtable [my getCurrentStateHashtable]
        [::GamePersistanceSingleton::getInstance] save [my jget abeClientInformation] $hashtable
    }
    

    method getCurrentStateHashtable {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "getCurrentStateHashtable"
        set hashtable [[::StdUtil::getInstance] createHashtable]
        if {[expr {[my jget allbinaryGameCanvasRunnableInterface] ne [::NullGameCanvasRunnable::staticGet_NULL_GAME_CANVAS_RUNNABLE]}]} {
            set currentHashtable [[my jget allbinaryGameCanvasRunnableInterface] getCurrentStateHashtable]
            set enumeration [$currentHashtable keys]
            set key {}
            while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
                set key [[my jget enumerationUtil] nextElement $enumeration]
                $hashtable put $key [$currentHashtable get $key]
            }
        }
        return $hashtable
    }
    

    method setLoadGameForm {loadGameForm} {
        my jset loadGameForm $loadGameForm
    }
    

    method getLoadGameForm {} {
        return [my jget loadGameForm]
    }
    

    method setResized {resized} {
        my jset resized $resized
    }
    

    method isResized {} {
        return [my jget resized]
    }
    

    method isDemoLoading {} {
        if {[my jget startedBefore]} {
            return false
        }
        set displayable [[my getDisplay] getCurrent]
        if {[jinstanceof $displayable ::DemoCanvas]} {
            set demoCanvas $displayable
            if {[$demoCanvas isDemoLoading]} {
                return true
            }
        }
        return false
    }
}

namespace eval ::GameMidlet {
}


