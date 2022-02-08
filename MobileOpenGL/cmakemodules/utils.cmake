function(add_opengl_demo NAME)
    #glfw
    include_directories(${3DRPARTY_DIR}/glfw3.3.6/include)
    link_directories(${3DRPARTY_DIR}/glfw3.3.6/lib-x86_64)

    #glad
    include_directories(${3DRPARTY_DIR}/glad/include)
    link_directories(${3DRPARTY_DIR}/glad/lib-x86_64)

    #demo
    include_directories(${CMAKE_CURRENT_SOURCE_DIR}/)
    file(GLOB EXAMPLE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp )
    add_executable(example_opengl_${NAME} ${EXAMPLE_DIR})
    
    target_link_libraries(example_opengl_${NAME} PRIVATE glfw.3 glad)
endfunction(add_opengl_demo)

function(add_vulkan_demo NAME)
    #glfw
    include_directories(${3DRPARTY_DIR}/glfw3.3.6/include)
    link_directories(${3DRPARTY_DIR}/glfw3.3.6/lib-x86_64)

    #glm
    include_directories(/usr/local/include)
    link_directories(/usr/local/lib)

    #vulkan
    include_directories(/Users/zrf/VulkanSDK/1.2.198.0/macOS/include)
    link_directories(/Users/zrf/VulkanSDK/1.2.198.0/macOS/lib)

    #demo
    include_directories(${CMAKE_CURRENT_SOURCE_DIR}/)
    file(GLOB EXAMPLE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp )
    add_executable(example_vulkan_${NAME} ${EXAMPLE_DIR})
    
    target_link_libraries(example_vulkan_${NAME} PRIVATE glfw.3)
endfunction(add_vulkan_demo)

macro(get_subdir_list result curdir) 
    FILE(GLOB children RELATIVE ${curdir} ${curdir}/*) 
    set(dirlist "")
    foreach(child ${children})
        if(IS_DIRECTORY ${curdir}/${child})
            list(APPEND dirlist ${child})
        endif()
    endforeach()
    set(${result} ${dirlist})
endmacro()
