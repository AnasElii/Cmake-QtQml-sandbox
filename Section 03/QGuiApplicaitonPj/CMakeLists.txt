cmake_minimum_required(VERSION 3.16)
project(QGuiApp VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

#========= Set directories
set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")
#========= Include directories
include_directories(${SOURCE_DIR})
include_directories(${INCLUDE_DIR})

#========= Add directories files 
file(GLOB_RECURSE SOURCES
    "${SOURCE_DIR}/*.cpp"
    "${INCLUDE_DIR}/*.h"
)

#========= Include libraries
find_package(Qt6 COMPONENTS Gui Quick REQUIRED)

#========= Add executable
qt_add_executable(QGuiApp
    ${SOURCES}    
)

#========= Add qml medule
qt_add_qml_module(QGuiApp
    URI res
    VERSION 1.0
    QML_FILES 
        ui/main.qml
    RESOURCES
        img/logo.png
)

#========= Link target subDirectories
target_link_directories(QGuiApp PUBLIC src)
target_link_directories(QGuiApp PUBLIC include)
target_link_directories(QGuiApp PUBLIC ui)


#========= Link libraries
target_link_libraries(QGuiApp PRIVATE Qt6::Gui Qt6::Quick)