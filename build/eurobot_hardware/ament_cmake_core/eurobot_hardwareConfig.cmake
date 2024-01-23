# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_eurobot_hardware_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED eurobot_hardware_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(eurobot_hardware_FOUND FALSE)
  elseif(NOT eurobot_hardware_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(eurobot_hardware_FOUND FALSE)
  endif()
  return()
endif()
set(_eurobot_hardware_CONFIG_INCLUDED TRUE)

# output package information
if(NOT eurobot_hardware_FIND_QUIETLY)
  message(STATUS "Found eurobot_hardware: 1.0.0 (${eurobot_hardware_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'eurobot_hardware' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${eurobot_hardware_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(eurobot_hardware_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "ament_cmake_export_include_directories-extras.cmake;ament_cmake_export_libraries-extras.cmake;ament_cmake_export_dependencies-extras.cmake")
foreach(_extra ${_extras})
  include("${eurobot_hardware_DIR}/${_extra}")
endforeach()
