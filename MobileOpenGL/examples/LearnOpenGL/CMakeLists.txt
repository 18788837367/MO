include(${CMAKEMODULES_DIR}/utils.cmake)
set(EXECUTABLE_OUTPUT_PATH ${ROOT_DIR}/bin)

get_subdir_list(subdir_list ${CMAKE_CURRENT_SOURCE_DIR})
foreach(child ${subdir_list})
    if(NOT ${child} STREQUAL "utils") 
        add_subdirectory(${child})
    endif()
endforeach()


