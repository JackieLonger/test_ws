# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_cpp_subscriber_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED cpp_subscriber_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(cpp_subscriber_FOUND FALSE)
  elseif(NOT cpp_subscriber_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(cpp_subscriber_FOUND FALSE)
  endif()
  return()
endif()
set(_cpp_subscriber_CONFIG_INCLUDED TRUE)

# output package information
if(NOT cpp_subscriber_FIND_QUIETLY)
  message(STATUS "Found cpp_subscriber: 0.0.0 (${cpp_subscriber_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'cpp_subscriber' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${cpp_subscriber_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(cpp_subscriber_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${cpp_subscriber_DIR}/${_extra}")
endforeach()
