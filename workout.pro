# ---------------------------------------------------------------
# workout.pro — сборочный файл qmake для проекта «Дневник тренировок»
# Открывается в Qt Creator: Файл -> Открыть проект или файл...
# Кроссплатформенность: Desktop (Win/Linux/macOS) + Android/iOS
# ---------------------------------------------------------------

QT += core gui widgets

# Qt5 по умолчанию; при Qt6-сборке достаточно поменять на c++17 и убрать лишнее
CONFIG += c++14

TARGET = workout
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    src/main.cpp \
    src/mainwindow.cpp

HEADERS += \
    src/mainwindow.h

FORMS += \
    src/mainwindow.ui

# -------------------------------------------------------------------
# Настройки под мобильные платформы (qmake умеет их автоматически)
# -------------------------------------------------------------------
android {
    # AndroidManifest.xml создаётся qmake автоматически, если файла нет.
    # Минимальная версия Android и права — при необходимости добавим позже.
}

ios {
    QMAKE_TARGET_BUNDLE_PREFIX = com.workout.diary
    QMAKE_BUNDLE = workout
}

# Сборка всех артефактов в отдельную папку не требуется — qmake сам
# кладёт их в build-директорию, выбранную в Qt Creator.
