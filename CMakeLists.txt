cmake_minimum_required(VERSION 3.16)

project(test_music VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(apptest_music
    main.cpp
)

qt_add_qml_module(apptest_music
    URI test_music
    VERSION 1.0
    QML_FILES Main.qml
    Resource.qrc
    IC_BG.png
    maverick1.mp3
    PixelExpert_Logo_trim.png
)

set_target_properties(apptest_music PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptest_music
    PRIVATE Qt6::Quick
)

install(TARGETS apptest_music
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
