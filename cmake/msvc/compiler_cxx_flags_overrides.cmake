if(MSVC)     
  # Use the static C++ library for all build types
  MESSAGE(STATUS "link to static C++ runtime lirbary(/MT /MTd)")
  foreach(var 
        CMAKE_CXX_FLAGS_DEBUG_INIT 
        CMAKE_CXX_FLAGS_RELEASE_INIT
        CMAKE_CXX_FLAGS_MINSIZEREL_INIT 
        CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT
    )
    if(${var} MATCHES "/MD")
      string(REGEX REPLACE "/MD" "/MT" ${var} "${${var}}")
      MESSAGE(STATUS  "${var}:${${var}}")
    endif()    
  endforeach()    
endif(MSVC)
