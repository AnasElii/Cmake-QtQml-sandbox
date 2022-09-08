cmake_minimum_required(VERSION 3.21)
project(QQmlAppLayout VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")

include_directories(${SOURCE_DIR})
include_directories(${INCLUDE_DIR})

file(GLOB_RECURSE SOURCES
    "${SOURCE_DIR}/*.cpp"
    "${INCLUDE_DIR}/*.h"
)

find_package(Qt6 COMPONENTS Gui Quick REQUIRED)

add_executable(QQmlAppLayout
    ${SOURCES}    
)

qt_add_qml_module(QQmlAppLayout
    URI res
    VERSION 1.0
    QML_FILES 
        ui/main.qml
    RESOURCES
        img/logo.png
)

target_link_directories(QQmlAppLayout PUBLIC src)
target_link_directories(QQmlAppLayout PUBLIC include)
target_link_directories(QQmlAppLayout PUBLIC ui)

target_link_libraries(QQmlAppLayout PRIVATE Qt6::Gui Qt6::Quick)