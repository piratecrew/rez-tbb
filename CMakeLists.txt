CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(ExternalProject)

if(${TBB_VERSION} STREQUAL "4.4")
	set(url_tbb https://www.threadingbuildingblocks.org/sites/default/files/software_releases/linux/tbb44_20160526oss_lin_1.tgz)
endif()

set(make_args -j1 VERBOSE=on)

ExternalProject_add(
    tbb
    URL ${url_tbb}
    PREFIX tbb
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
)

install(DIRECTORY ${CMAKE_BINARY_DIR}/tbb/src/tbb DESTINATION .)

rez_install_files(
    cmake/tbb.cmake
    DESTINATION .
)
