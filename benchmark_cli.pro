# Benchmark CLI project - minimal build without GUI
QT -= gui widgets
QT += core

TARGET = benchmark_cli
TEMPLATE = app
CONFIG += console c++17

linux: {
QMAKE_CXXFLAGS += -fopenmp
QMAKE_LFLAGS += -fopenmp
}

QMAKE_CXXFLAGS_RELEASE *= -O3 -march=native -flto
QMAKE_LFLAGS_RELEASE *= -flto

SOURCES += \
    benchmark_cli.cpp \
    src/Deck.cpp \
    src/Card.cpp \
    src/GameTree.cpp \
    src/library.cpp \
    src/compairer/Dic5Compairer.cpp \
    src/nodes/ActionNode.cpp \
    src/nodes/ChanceNode.cpp \
    src/nodes/GameActions.cpp \
    src/nodes/GameTreeNode.cpp \
    src/nodes/ShowdownNode.cpp \
    src/nodes/TerminalNode.cpp \
    src/ranges/PrivateCards.cpp \
    src/ranges/PrivateCardsManager.cpp \
    src/ranges/RiverCombs.cpp \
    src/ranges/RiverRangeManager.cpp \
    src/runtime/PokerSolver.cpp \
    src/solver/BestResponse.cpp \
    src/solver/CfrSolver.cpp \
    src/solver/PCfrSolver.cpp \
    src/solver/Solver.cpp \
    src/tools/CommandLineTool.cpp \
    src/tools/GameTreeBuildingSettings.cpp \
    src/tools/lookup8.cpp \
    src/tools/PrivateRangeConverter.cpp \
    src/tools/progressbar.cpp \
    src/tools/Rule.cpp \
    src/tools/StreetSetting.cpp \
    src/tools/utils.cpp \
    src/trainable/CfrPlusTrainable.cpp \
    src/trainable/DiscountedCfrTrainable.cpp \
    src/trainable/DiscountedCfrTrainableHF.cpp \
    src/trainable/DiscountedCfrTrainableSF.cpp \
    src/trainable/Trainable.cpp \
    src/runtime/qsolverjob.cpp

HEADERS += \
    include/tools/half-1-12-0.h \
    include/trainable/DiscountedCfrTrainableHF.h \
    include/trainable/DiscountedCfrTrainableSF.h \
    include/Card.h \
    include/GameTree.h \
    include/Deck.h \
    include/json.hpp \
    include/library.h \
    include/solver/PCfrSolver.h \
    include/solver/Solver.h \
    include/solver/BestResponse.h \
    include/solver/CfrSolver.h \
    include/tools/argparse.hpp \
    include/tools/CommandLineTool.h \
    include/tools/utils.h \
    include/tools/GameTreeBuildingSettings.h \
    include/tools/Rule.h \
    include/tools/StreetSetting.h \
    include/tools/lookup8.h \
    include/tools/PrivateRangeConverter.h \
    include/tools/progressbar.h \
    include/runtime/PokerSolver.h \
    include/runtime/qsolverjob.h \
    include/trainable/CfrPlusTrainable.h \
    include/trainable/DiscountedCfrTrainable.h \
    include/trainable/Trainable.h \
    include/compairer/Compairer.h \
    include/compairer/Dic5Compairer.h \
    include/nodes/ActionNode.h \
    include/nodes/ChanceNode.h \
    include/nodes/GameActions.h \
    include/nodes/GameTreeNode.h \
    include/nodes/ShowdownNode.h \
    include/nodes/TerminalNode.h \
    include/ranges/PrivateCards.h \
    include/ranges/PrivateCardsManager.h \
    include/ranges/RiverCombs.h \
    include/ranges/RiverRangeManager.h \
    include/tools/tinyformat.h \
    include/tools/qdebugstream.h

RESOURCES += \
    compairer.qrc
