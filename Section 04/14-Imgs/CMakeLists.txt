cmake_minimum_required(VERSION 3.16)
project(QQmlImgApp VERSION 1.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED)

set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src")
include_directories(${SOURCE_DIR})

file(GLOB_RECURSE SOURCES
    "${SOURCE_DIR}/*.cpp"
)

find_package(Qt6 COMPONENTS Gui Quick REQUIRED)

qt_add_executable(QQmlImgApp
    ${SOURCES}
)

qt_add_qml_module(QQmlImgApp
    URI rec
    VERSION 1.0
    QML_FILES
    ui/main.qml
    RESOURCES
    img/profile.png
)

target_link_directories(QQmlImgApp PUBLIC src)

target_link_libraries(QQmlImgApp PRIVATE Qt6::Gui Qt6::Quick)