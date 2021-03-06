# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = danstontrump

CONFIG += sailfishapp

SOURCES += src/danstontrump.cpp \
    src/quote.cpp \
    src/quotebuilder.cpp \
    src/quotelist.cpp \
    src/quotemanager.cpp \
    src/restapi.cpp

DISTFILES += qml/danstontrump.qml \
    qml/items/MenuDisplay.qml \
    qml/items/QuoteDisplay.qml \
    qml/cover/CoverPage.qml \
    qml/items/Title.qml \
    qml/pages/DetailQuotesPage.qml \
    qml/pages/MainPage.qml \
    qml/pages/PersonalizedQuotesPage.qml \
    qml/pages/RandomQuotePage.qml \
    rpm/danstontrump.changes.in \
    rpm/danstontrump.changes.run.in \
    rpm/danstontrump.spec \
    rpm/danstontrump.yaml \
    translations/*.ts \
    danstontrump.desktop



SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/danstontrump-de.ts

HEADERS += \
    src/quote.h \
    src/quotebuilder.h \
    src/quotelist.h \
    src/quotemanager.h \
    src/restapi.h
