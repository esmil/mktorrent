# Function that sets the build type for single-config generators to a specified default in case none is specified in the command line

function(default_build_type_config _default_build_type)
    if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
        message(STATUS "Setting build type to ${_default_build_type} as none was specified.")
        set(CMAKE_BUILD_TYPE "${_default_build_type}" CACHE STRING "Choose the type of build." FORCE)
        # Set the possible values of build type for cmake-gui, ccmake
        set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
    endif()
endfunction()
