cmake_minimum_required(VERSION 3.16)

project(Kestrel VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appKestrel
    src/main.cpp
)

qt_add_qml_module(appKestrel
    URI Kestrel
    VERSION 1.0
    QML_FILES
        QML/Main.qml
        QML/month/Month.qml
        QML/title/Title.qml
        SOURCES include/main.h
        SOURCES src/main.cpp
        QML_FILES QML/title/Settings.qml
        QML_FILES
        QML_FILES QML/calendars/Calendars.qml
        QML_FILES QML/util/HSpacer.qml
        QML_FILES QML/util/VSpacer.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appKestrel PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appKestrel
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appKestrel
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appKestrel
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
