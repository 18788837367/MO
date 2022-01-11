function(add_demo NAME)
    #glfw
    include_directories(${3DRPARTY_DIR}/glfw3.3.6/include)
    link_directories(${3DRPARTY_DIR}/glfw3.3.6/lib-x86_64)

    #glad
    include_directories(${3DRPARTY_DIR}/glad/include)
    link_directories(${3DRPARTY_DIR}/glad/lib-x86_64)

    #demo
    include_directories(${CMAKE_CURRENT_SOURCE_DIR}/)
    file(GLOB EXAMPLE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp )
    add_executable(example_${NAME} ${EXAMPLE_DIR})
    
    target_link_libraries(example_${NAME} PRIVATE glfw.3 glad)
endfunction(add_demo)

