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
# package org.allbinary.game.displayable.canvas

oo::class create ::DemoCanvas {
    superclass ::RunnableCanvas
}

oo::define ::DemoCanvas {
    method initFields_DemoCanvas {} {
        my jset basicColorFactory {}
        my jset myCommandsFactory {}
        my jset gameAdStateFactory {}
        my jset gameInputStrings {}
        my jset gameStateFactory {}
        my jset threadFactoryUtil {}
        my jset formUtil {}
        my jset fullscreenPaintable {}
        my jset basicGameDemoPaintable {}
        my jset specialAnimationInterface {}
        my jset paintedSpecialAnimationInterface {}
        my jset fullScreenUtil {}
        my jset gameCanvas {}
        my jset highScoresHelper {}
        my jset realHighScoresPaintable {}
        my jset highScoresPaintable {}
        my jset state 0
        my jset canvasThread {}
        my jset timeDelayHelper {}
        my jset basicColor {}
        my jset abeClientInformation {}
        my jset highScoresFactoryInterface {}
        my jset menuInputProcessor {}
        my jset menuForm {}
        my jset gameInitializationInterfaceFactoryInterface {}
        my jset initialized false
        my jset demoGameRunnable {}
        my jset defaultPaintableInterface {}
        my jset paintableInterface {}
        my jset overlayPaintable {}
        my jset progressPaintable {}
        my jset tempWait 0
        my jset inputToGameKeyMapping {}
        my jset gameRunnable {}
        my jset isSingleKeyRepeatableProcessing false
        my jset NONE {}
        my jset gameKeyEventFactory {}
        my jset lastKeyNotMapped 0
        my jset SET_STATE {}
        my jset baseGameStatistics {}
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        my jset myCommandsFactory [::MyCommandsFactory::getInstance]
        my jset gameAdStateFactory [::GameAdStateFactory::getInstance]
        my jset gameInputStrings [::GameInputStrings::getInstance]
        my jset gameStateFactory [::GameStateFactory::getInstance]
        my jset threadFactoryUtil [::ThreadFactoryUtil::getInstance]
        my jset formUtil [::FormUtil::getInstance]
        my jset fullscreenPaintable [[::FullScreenPaintableFactory::getInstance] jget paintable]
        my jset basicGameDemoPaintable [::StatePaintableFactory::getInstance]
        my jset specialAnimationInterface [::SpecialAnimation::getInstance]
        my jset paintedSpecialAnimationInterface [::SpecialAnimation::getInstance]
        my jset fullScreenUtil [::FullScreenUtil::getInstance]
        my jset gameCanvas [::NullGameCanvas::getInstance]
        my jset highScoresHelper [::HighScoresHelper new]
        my jset realHighScoresPaintable [::HighScoresPaintable new]
        my jset highScoresPaintable [::NullPaintable::getInstance]
        my jset state 0
        my jset canvasThread [::NullThread::staticGet_NULL_THREAD]
        my jset timeDelayHelper [::TimeDelayHelper new 6000]
        my jset basicColor [[my jget basicColorFactory] jget RED]
        
        
        my jset menuInputProcessor [::NoMenuInputProcessor::getInstance]
        my jset menuForm [::ScrollSelectionForm::getNullScrollSelectionForm]
        
        my jset initialized false
        
        my jset defaultPaintableInterface [::NullPaintable::getInstance]
        my jset paintableInterface [::NullPaintable::getInstance]
        
        my jset progressPaintable [::ProgressCanvasFactory::getLazyInstance]
        my jset tempWait [[::NullWaitGameRunnable::getInstance] jget WAIT]
        my jset inputToGameKeyMapping [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my jset gameRunnable [::NullWaitGameRunnable::getInstance]
        my jset isSingleKeyRepeatableProcessing [[::Features::getInstance] isFeature [[::InputFeatureFactory::getInstance] jget SINGLE_KEY_REPEAT_PRESS]]
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        my jset lastKeyNotMapped [expr {-1}]
        my jset SET_STATE "setState"
        my jset baseGameStatistics [::GameStatisticsFactory::getInstance]
        return
    }
    

    constructor {abeClientInformation commandListener highScoresFactoryInterface paintable overlayPaintable gameInitializationInterfaceFactoryInterface isContinue} {
        next $commandListener [[::CurrentDisplayableFactory::getInstance] jget DEFAULT_CHILD_NAME_LIST] true
        my initFields_DemoCanvas
        my jset abeClientInformation $abeClientInformation
        my setWait [[::NullWaitGameRunnable::getInstance] jget WAIT]
        my jset gameInitializationInterfaceFactoryInterface $gameInitializationInterfaceFactoryInterface
        [::GameInitializationUtil::getInstance] initDemo $abeClientInformation [self] $gameInitializationInterfaceFactoryInterface
        [::ResizableListenerHandler::getInstance] fireEvent false
        my jset overlayPaintable $overlayPaintable
        my jset highScoresFactoryInterface $highScoresFactoryInterface
        my setDefaultPaintableInterface $paintable
        my setPaintableInterface [my getDefaultPaintableInterface]
        if {$isContinue} {
            my addCommand [[::GameCommandsFactory::getInstance] jget CONTINUE_COMMAND]
        }
        if {[[::ChangedGameFeatureListener::getInstance] isChangedFeature [[::GameFeatureFactory::getInstance] jget SOUND]]} {
            my mediaInit
        }
        my jset demoGameRunnable [::DemoGameStartupRunnable new [self]]
        [::DisplayChangeEventHandler::getInstance] addListenerInterface [self]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onDisplayChangeEvent {displayChangeEvent} {
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonLabels] jget START_LABEL]] append [[my jget displayInfo] toString]] toString] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT]
            set scrollSelectionForm [my getMenuForm]
            if {[expr {$scrollSelectionForm ne {}}]} {
                set formType [[::FormTypeFactory::getInstance] getFormType]
                set rectangle [[my jget formUtil] createFormRectangle]
                $scrollSelectionForm init $rectangle $formType
            }
            [my jget overlayPaintable] init
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT] $e
        }
    }
    

    method getCustomCommands {} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        if {[::J2MEUtil::isHTML]} {
            set commandArray [jarrayfrom [list [$gameCommandsFactory jget START_COMMAND] [[::HighScoreCommands::getInstance] jget DISPLAY] [::GameInputMappingCanvas::staticGet_DISPLAY] [$gameCommandsFactory jget DISPLAY_ABOUT]]]
            return $commandArray
        } else {
            set commandList [::BasicArrayListD new]
            $commandList add [$gameCommandsFactory jget START_COMMAND]
            set inApplicationPurchaseFactory [::InApplicationPurchaseFactory::getInstance]
            if {[$inApplicationPurchaseFactory isEnabled]} {
                set list [[::LockableFeatureFactory::getInstance] getList]
                if {[expr {[expr {[$list size] > 0}] && [expr {![$inApplicationPurchaseFactory isPurchased [$list get 0]]}]}]} {
                    $commandList add [$gameCommandsFactory jget BUY_COMMAND]
                }
            }
            $commandList add [[::HighScoreCommands::getInstance] jget DISPLAY]
            try {
                set isOverScan [[[::OperatingSystemFactory::getInstance] getOperatingSystemInstance] isOverScan]
                if {[::SWTUtil::staticGet_isSWT]} {
                    $commandList add [::GameInputMappingCanvas::staticGet_DISPLAY]
                } elseif {[expr {!$isOverScan}]} {
                    $commandList add [$gameCommandsFactory jget DISPLAY_OPTIONS]
                    $commandList add [$gameCommandsFactory jget DISPLAY_LOAD_FORM]
                    $commandList add [::GameInputMappingCanvas::staticGet_DISPLAY]
                }
            } on error {e} {
            }
            $commandList add [$gameCommandsFactory jget DISPLAY_ABOUT]
            set commandArray [$commandList toArray]
            return $commandArray
        }
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        set commandArray [my getCustomCommands]
        set size [$commandArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            my addCommand [$commandArray get $index]
        }
        ::CustomGameMenuUtil::add [self]
        my setCommandListener $cmdListener
    }
    

    method initPostPaint {} {
    }
    

    method mediaInit {} {
        ::AllBinaryMediaManager::init [::EarlySoundsFactory::getInstance]
    }
    

    method itemStateChanged {item} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
    

    method initMenu {} {
        my close
        set commandTextItemArrayFactory [[::DemoLimitedCommandTextItemArrayFactory::getInstance] getCommandTextItemArrayFactory]
        set items [$commandTextItemArrayFactory getInstance [my getCommandStack] [[my jget basicColorFactory] jget BLACK] [[my jget basicColorFactory] jget WHITE]]
        set formType [[::FormTypeFactory::getInstance] getFormType]
        set rectangle [[my jget formUtil] createFormRectangle]
        ::PreLogUtil::put [[[[::StringMaker new] append [[my jget commonLabels] jget START_LABEL]] append [[my jget displayInfo] toString]] toString] [self] "initMenu"
        set scrollSelectionForm [::CommandCurrentSelectionFormFactory::getInstance [[::StringUtil::getInstance] jget EMPTY_STRING] $items $rectangle $formType 15 true [[my jget basicColorFactory] jget BLACK] [[my jget basicColorFactory] jget WHITE]]
        my setMenuForm $scrollSelectionForm
        set formType2 [[::FormTypeFactory::getInstance] getFormType]
        set rectangle2 [[my jget formUtil] createFormRectangle]
        $scrollSelectionForm init $rectangle2 $formType2
        if {[expr {[my getMenuForm] ne [::ScrollSelectionFormNoneFactory::getInstance]}]} {
            my setMenuInputProcessor [::CommandFormInputProcessor new [::BasicArrayListD new] [expr {-1}] [self] [my getMenuForm]]
        }
        my open
    }
    

    method open {} {
        [::BasicMotionGesturesHandler::getInstance] addListenerInterface [my getMenuInputProcessor]
        [::GameKeyEventHandler::getInstance] addListener [my getMenuInputProcessor]
    }
    

    method close {} {
        [::BasicMotionGesturesHandler::getInstance] removeListener [my getMenuInputProcessor]
        [::GameKeyEventHandler::getInstance] removeListener [my getMenuInputProcessor]
    }
    

    method getSourceId {} {
        return [::DemoCanvas::staticGet_id]
    }
    

    method keyPressed {keyCode} {
        my keyPressedByDevice $keyCode 0
    }
    

    method keyReleased {keyCode} {
        my keyReleasedByDevice $keyCode 0
    }
    

    method keyRepeated {keyCode} {
        my keyRepeatedByDevice $keyCode 0
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        my addGameKeyEvent $keyCode false
    }
    

    method keyReleasedByDevice {keyCode deviceId} {
        my removeGameKeyEvent $keyCode false
    }
    

    method keyRepeatedByDevice {keyCode deviceId} {
        if {[my jget isSingleKeyRepeatableProcessing]} {
            my addGameKeyEvent $keyCode true
        }
    }
    

    method addGameKeyEvent {keyCode repeated} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [self] $keyCode]
            if {[expr {$gameKey ne [my jget NONE]}]} {
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] $gameKey]
                [::DownGameKeyEventHandler::getInstance] fireEvent $gameKeyEvent
            } else {
                if {[expr {[my jget lastKeyNotMapped] != $keyCode}]} {
                    my jset lastKeyNotMapped $keyCode
                    [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT]
                }
            }
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
    

    method removeGameKeyEvent {keyCode repeated} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [self] $keyCode]
            if {[expr {$gameKey ne [my jget NONE]}]} {
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] $gameKey]
                [::UpGameKeyEventHandler::getInstance] fireEvent $gameKeyEvent
            } else {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT]
            }
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT] $e
        }
    }
    

    method pause {} {
        my close
        my setPaused true
        my jset gameRunnable [::NullWaitGameRunnable::getInstance]
        [my jget gameCanvas] pause
    }
    

    method unPause {} {
        my open
        [my jget gameCanvas] unPause
        my jset gameRunnable [[my jget gameCanvas] jget gameRunnable]
        my setPaused false
    }
    

    method isPausable {} {
        if {[expr {[[::CurrentDisplayableFactory::getInstance] getUsedRunnable] == [::NullWaitGameRunnable::getInstance]}]} {
            return true
        } else {
            return false
        }
    }
    

    method isGameOver {} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget NOT_IMPLEMENTED]] append " since not a game"] toString] [self] "isGameOver"
        return false
    }
    

    method setLoadStateHashtable {hashtable} {
        [my jget logUtil] putF "Trying to continue a demo lol - only continue a game canvas not the demo" [self] "setLoadStateHashtable"
    }
    

    method getLoadStateHashtable {} {
        [my jget logUtil] putF "Trying to continue a demo lol - only continue a game canvas not the demo" [self] "getLoadStateHashtable"
        return [[my jget stdUtil] jget NULL_TABLE]
    }
    

    method getCurrentStateHashtable {} {
        [my jget logUtil] putF "Trying to save the AI lol" [self] "getCurrentStateHashtable"
        return [[my jget stdUtil] jget NULL_TABLE]
    }
    

    method setHighScoreSubmitted {isNotUsed} {
    }
    

    method paint {graphics} {
        [my jget paintableInterface] paint $graphics
        [my jget paintedSpecialAnimationInterface] paintXY $graphics 0 0
        [my jget highScoresPaintable] paint $graphics
        [my getBasicGameDemoPaintable] paint $graphics
        [my jget overlayPaintable] paint $graphics
        [my jget fullscreenPaintable] paint $graphics
        [my jget progressPaintable] paint $graphics
    }
    

    method paintThreed {graphics} {
        [my jget paintableInterface] paintThreed $graphics
        [my jget paintedSpecialAnimationInterface] paintThreedXYZ $graphics 0 0 0
    }
    

    method processGameOver {} {
        [my jget logUtil] putF "Not Implemented since not a game" [self] "setGameOver"
    }
    

    method demoStateChange {} {
        set newState [jint [expr {[my jget state] + 1}]]
        if {[expr {$newState > 2}]} {
            set newState 0
        } elseif {[expr {$newState == 2}]} {
            if {[expr {![[my jget highScoresHelper] isAnyHighScores]}]} {
                set newState 0
            } else {
                set highScores [[my jget highScoresHelper] getNextHighScores]
                if {[expr {$highScores eq [::NullHighScoresSingletonFactory::getInstance]}]} {
                    set newState 0
                } else {
                    [my getRealHighScoresPaintable] setHighScores $highScores
                }
            }
        }
        my setState $newState
        my updateDemoState
    }
    

    method updateDemoState {} {
        ::PreLogUtil::put [[[::SmallIntegerSingletonFactory::getInstance] createInstance [my jget state]] toString] [self] [my jget SET_STATE]
        [my getBasicGameDemoPaintable] setState [my jget state]
        if {[expr {[my jget state] == 0}]} {
            my jset highScoresPaintable [::NullPaintable::getInstance]
            my jset paintedSpecialAnimationInterface [my getSpecialAnimationInterface]
            if {[expr {[expr {![[my jget demoGameRunnable] isRunning]}] && [[my jget gameCanvas] isInitialized]}]} {
                [my getSpecialAnimationInterface] reset
            }
        } elseif {[expr {[my jget state] == 1}]} {
            my jset paintedSpecialAnimationInterface [::SpecialAnimation::getInstance]
        } elseif {[expr {[my jget state] == 2}]} {
            my jset highScoresPaintable [my getRealHighScoresPaintable]
        }
        set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
        $gameAdState processPageAdState
    }
    

    method getNextRandom {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method createGameLayerManager {randomValue} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method createRunnable {randomLevel} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method create {} {
        ::PreLogUtil::put [[my jget commonStrings] jget START] [self] "create"
        my jset highScoresPaintable [::NullPaintable::getInstance]
        set randomLevel [my getNextRandom]
        my jset gameCanvas [my createRunnable $randomLevel]
        my jset basicColor [[[my jget gameCanvas] getLayerManager] getForegroundBasicColor]
        [my getRealHighScoresPaintable] setBasicColorP [my jget basicColor]
        [my jget gameCanvas] setGameCanvasStartListener [self]
        set gameInfo [[[my jget gameCanvas] getLayerManager] getGameInfo]
        [my getHighScoresFactoryInterface] fetchHighScores $gameInfo [my jget highScoresHelper]
    }
    

    method start {} {
        set gameCanvas [my jget gameCanvas]
        ::PreLogUtil::put [[[[::StringMaker new] append "Game Thread in DemoCanvas: "] append [[my jget stringUtil] toString1 $gameCanvas]] toString] [self] [[my jget commonStrings] jget START]
        my jset canvasThread [[my jget threadFactoryUtil] getInstanceGameCanvasRunnable $gameCanvas]
        [my jget gameCanvas] setThread [my jget canvasThread]
        [my jget threadFactoryUtil] start [my jget canvasThread]
        if {[expr {[my getWait] == [[::NullWaitGameRunnable::getInstance] jget WAIT]}]} {
            my setWait [my getTempWait]
        }
    }
    

    method preDemoProcess {} {
        if {[expr {[expr {![[my jget gameCanvas] isInitialized]}] || [expr {[[my jget gameCanvas] getTitle] == [::NullGameCanvas::staticGet_NO_GAME]}]}]} {
            if {[::AllBinaryMediaManager::update]} {
                if {[expr {![[::PrimaryPlayerQueueFactory::getInstance] process]}]} {
                    [::SecondaryPlayerQueueFactory::getInstance] process
                }
            }
        }
        [my jget overlayPaintable] update
    }
    

    method process {} {
        next
        [my getMenuInputProcessor] processInputList
        my preDemoProcess
        if {[expr {[my jget state] == 0}]} {
            set indexedAnimationBehavior ([[my getSpecialAnimationInterface] getAnimationBehavior])
            if {[expr {[$indexedAnimationBehavior jget loopIndex] < 1}]} {
                [my jget timeDelayHelper] setStartTimeTNT
            }
            set demoGameMidlet [my getCustomCommandListener]
            if {[expr {[expr {[my jget gameCanvas] ne [::NullGameCanvas::getInstance]}] && [[my jget gameCanvas] isGameOver]}]} {
                my stopGameDemo
                set randomLevel [my getNextRandom]
                set gameInfo [[[my jget gameCanvas] getLayerManager] getGameInfo]
                $gameInfo setCurrentLevel $randomLevel
                [my jget gameCanvas] setGameOver false
                my start
            } elseif {[expr {[expr {[my jget gameCanvas] eq [::NullGameCanvas::getInstance]}] && [$demoGameMidlet isReady]}]} {
                if {[expr {![[my jget demoGameRunnable] isRunning]}]} {
                    my startDemoGame
                    [my jget demoGameRunnable] setRunning true
                    set thread [[my jget threadFactoryUtil] getInstanceForRunnable [my jget demoGameRunnable]]
                    [my jget demoGameRunnable] setThread $thread
                    [my jget threadFactoryUtil] start $thread
                }
            }
        }
    }
    

    method startDemoGame {} {
        ::DemoCanvasProgressUtil::showProgress [self]
    }
    

    method stopGameDemo {} {
        if {[expr {[my jget gameCanvas] ne [::NullGameCanvas::getInstance]}]} {
            [my jget logUtil] putF "Set Running False" [self] "stopGameDemo"
            [my jget gameCanvas] setRunning false
        }
        [::ThreadUtil::getInstance] join [my jget canvasThread]
    }
    

    method showGamePaintable {} {
        set METHOD_NAME "showGamePaintable"
        ::PreLogUtil::put [[my jget commonStrings] jget START] [self] $METHOD_NAME
        set isDefault [::J2MEUtil::isHTML]
        if {[expr {[expr {[expr {[my jget gameCanvas] ne [::NullGameCanvas::getInstance]}] && ([expr {[expr {[[my jget gameCanvas] isRunning] || $isDefault}] || [::SWTUtil::staticGet_isSWT]}])}] && [expr {!([expr {[[my jget gameCanvas] getType] == [::NullGameCanvas::staticGet_TYPE]}])}]}]} {
            my jset gameRunnable [[my jget gameCanvas] jget gameRunnable]
            ::PreLogUtil::put "Showing Game" [self] $METHOD_NAME
            my setPaintableInterface [my jget gameCanvas]
        } else {
            my jset gameRunnable [::NullWaitGameRunnable::getInstance]
            ::PreLogUtil::put "Not Showing Game" [self] $METHOD_NAME
            my setPaintableInterface [my getDefaultPaintableInterface]
        }
    }
    

    method isReadyForStateChange {} {
        return [expr {[expr {![[my jget demoGameRunnable] isRunning]}] && [[my jget gameCanvas] isInitialized]}]
    }
    

    method processGame {} {
        [my jget gameRunnable] run
        if {[expr {[expr {![[my jget specialAnimationInterface] isComplete]}] && [my isReadyForStateChange]}]} {
            [my jget specialAnimationInterface] nextFrame
        }
        if {[expr {[[my jget timeDelayHelper] isTimeTNT] && [my isReadyForStateChange]}]} {
            my demoStateChange
        } else {
            my process
        }
    }
    

    method run {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        try {
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            set features [::Features::getInstance]
            set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
            $progressCanvas addNormalPortion 50 "Demo Thread"
            my setCurrentThread
            my setRunning true
            if {[$features isFeature [[::MainFeatureFactory::getInstance] jget LOAD_ONDEMAND]]} {
                $progressCanvas end
            } else {
                $progressCanvas addNormalPortion 50 "Demo Thread Running"
            }
            [my jget fullScreenUtil] initOnRun [self] [my getCustomCommandListener]
            my initMenu
            my initPostPaint
            my updateDemoState
            if {[$features isDefault [$openGLFeatureFactory jget OPENGL_AS_GAME_THREAD]]} {
                while {[expr {[expr {[my jget gameCanvas] eq [::NullGameCanvas::getInstance]}] || [expr {![[my jget gameCanvas] isInitialized]}]}]} {
                    [my jget loopTimeHelper] setStartTimeTNT
                    my processGame
                    my processLoopSleep
                }
                set demoGameRunnable [::DemoGameRunnable new [self]]
                set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
                $currentDisplayableFactory setRunnable $demoGameRunnable
                $currentDisplayableFactory setMyCanvas [self]
                [::OpenGLThreadUtil::getInstance] onResume
            }
            if {[expr {[$features isDefault [$openGLFeatureFactory jget OPENGL_AS_GAME_THREAD]] || [::J2MEUtil::isHTML]}]} {
                set demoGameRunnable [::DemoGameRunnable new [self]]
                set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
                $currentDisplayableFactory setRunnable $demoGameRunnable
                $currentDisplayableFactory setMyCanvas [self]
            } else {
                while {[my isRunning]} {
                    my run3
                }
                my end
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
        [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
    }
    

    method run3 {} {
        [my jget loopTimeHelper] setStartTimeTNT
        my processGame
        my processLoopSleep
    }
    

    method setRunning {running} {
        next $running
        try {
            set features [::Features::getInstance]
            set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
            if {$running} {
            } else {
                if {[expr {([expr {[$features isDefault [$openGLFeatureFactory jget OPENGL]] || [::J2MEUtil::isHTML]}]) || [::SWTUtil::staticGet_isSWT]}]} {
                    set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
                    $currentDisplayableFactory clearRunnable
                    my end
                }
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [my jget SET_RUNNING] $e
        }
    }
    

    method end {} {
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        set features [::Features::getInstance]
        [my jget baseGameStatistics] add [[[[[::StringMaker new] append [::DemoCanvas::staticGet_BOT_GAME_STATS]] append [[my jget baseGameStatistics] toString]] append [[::CommonSeps::getInstance] jget NEW_LINE]] toString]
        [my jget baseGameStatistics] init
        if {[$features isFeature [[::MainFeatureFactory::getInstance] jget LOAD_ONDEMAND]]} {
            $progressCanvas start
        }
        [my jget logUtil] putF "Demo End" [self] [[my jget commonStrings] jget RUN]
        my close
        [::DisplayChangeEventHandler::getInstance] removeListener [self]
        my stopGameDemo
    }
    

    method setGameState {gameState} {
    }
    

    method getGameState {} {
        return [[my jget gameStateFactory] jget PLAYING_GAME_STATE]
    }
    

    method getGameCanvasRunnableInterface {} {
        return [my jget gameCanvas]
    }
    

    method isDemoLoading {} {
        set gameCanvas [my jget gameCanvas]
        if {[expr {$gameCanvas eq [::NullGameCanvas::getInstance]}]} {
            return true
        } elseif {[$gameCanvas isInitialized]} {
            return false
        }
        return true
    }
    

    method getState {} {
        return [my jget state]
    }
    

    method setState {state} {
        my jset state $state
    }
    

    method isHighScoreSubmitted {} {
        [my jget logUtil] putF "Wow the AI got a high score!" [self] "isHighScoreSubmitted"
        return false
    }
    

    method getRealHighScoresPaintable {} {
        return [my jget realHighScoresPaintable]
    }
    

    method setSpecialAnimationInterface {specialAnimationInterface} {
        $specialAnimationInterface setFrame 0
        my jset specialAnimationInterface $specialAnimationInterface
    }
    

    method getSpecialAnimationInterface {} {
        return [my jget specialAnimationInterface]
    }
    

    method setPaintableInterface {paintableInterface} {
        my jset paintableInterface $paintableInterface
    }
    

    method getPaintableInterface {} {
        return [my jget paintableInterface]
    }
    

    method setDefaultPaintableInterface {defaultPaintableInterface} {
        my jset defaultPaintableInterface $defaultPaintableInterface
    }
    

    method getDefaultPaintableInterface {} {
        return [my jget defaultPaintableInterface]
    }
    

    method getHighScoresFactoryInterface {} {
        return [my jget highScoresFactoryInterface]
    }
    

    method setMenuInputProcessor {menuInputProcessor} {
        my jset menuInputProcessor $menuInputProcessor
    }
    

    method getMenuInputProcessor {} {
        return [my jget menuInputProcessor]
    }
    

    method getMenuForm {} {
        return [my jget menuForm]
    }
    

    method setMenuForm {menuForm} {
        my jset menuForm $menuForm
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
    

    method getOverlayPaintable {} {
        return [my jget overlayPaintable]
    }
    

    method setBasicGameDemoPaintable {basicGameDemoPaintable} {
        my jset basicGameDemoPaintable $basicGameDemoPaintable
    }
    

    method getBasicGameDemoPaintable {} {
        return [my jget basicGameDemoPaintable]
    }
    

    method setTempWait {tempWait} {
        my jset tempWait $tempWait
    }
    

    method getTempWait {} {
        return [my jget tempWait]
    }
    

    method isSingleThread {} {
        return [expr {[[::OpenGLFeatureUtil::getInstance] isAnyThreed] || [::SWTUtil::staticGet_isSWT]}]
    }
    

    method isRunningInAnotherThread {} {
        set features [::Features::getInstance]
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[$features isDefault [$openGLFeatureFactory jget OPENGL_AS_GAME_THREAD]]} {
            return true
        } else {
            return [my isRunning]
        }
    }
    

    method getGameInitializationInterfaceFactoryInterface {} {
        return [my jget gameInitializationInterfaceFactoryInterface]
    }
    

    method getType {} {
        return [::DemoCanvas::staticGet_TYPE]
    }
    

    method getTitle {} {
        return [next]
    }
    

    method isPaused {} {
        return [next]
    }
}

namespace eval ::DemoCanvas {
    variable idValue {}
    variable idSet 0
    proc staticGet_id {} {
        variable idValue
        variable idSet
        if {!$idSet} {
            set idSet 1
            set idValue 0
        }
        return $idValue
    }
    proc staticSet_id {value} {
        variable idValue
        variable idSet
        set idSet 1
        set idValue $value
    }
    variable BOT_GAME_STATSValue {}
    variable BOT_GAME_STATSSet 0
    proc staticGet_BOT_GAME_STATS {} {
        variable BOT_GAME_STATSValue
        variable BOT_GAME_STATSSet
        if {!$BOT_GAME_STATSSet} {
            set BOT_GAME_STATSSet 1
            set BOT_GAME_STATSValue "Bot Game Statistics: "
        }
        return $BOT_GAME_STATSValue
    }
    proc staticSet_BOT_GAME_STATS {value} {
        variable BOT_GAME_STATSValue
        variable BOT_GAME_STATSSet
        set BOT_GAME_STATSSet 1
        set BOT_GAME_STATSValue $value
    }
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue 3
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
}


