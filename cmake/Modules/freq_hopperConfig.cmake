INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_FREQ_HOPPER freq_hopper)

FIND_PATH(
    FREQ_HOPPER_INCLUDE_DIRS
    NAMES freq_hopper/api.h
    HINTS $ENV{FREQ_HOPPER_DIR}/include
        ${PC_FREQ_HOPPER_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    FREQ_HOPPER_LIBRARIES
    NAMES gnuradio-freq_hopper
    HINTS $ENV{FREQ_HOPPER_DIR}/lib
        ${PC_FREQ_HOPPER_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FREQ_HOPPER DEFAULT_MSG FREQ_HOPPER_LIBRARIES FREQ_HOPPER_INCLUDE_DIRS)
MARK_AS_ADVANCED(FREQ_HOPPER_LIBRARIES FREQ_HOPPER_INCLUDE_DIRS)

