# recursion.cmake
function(factorial n result)
    if(n LESS_EQUAL 1)
        set(${result} 1 PARENT_SCOPE)
    else()
        math(EXPR temp "${n} - 1")
        factorial(${temp} tempResult)
        math(EXPR ${result} "${n} * ${tempResult}")
        set(${result} ${${result}} PARENT_SCOPE)
    endif()
endfunction()

message(STATUS "Enter an integer: ")
file(READ /dev/stdin input)
string(STRIP ${input})
string(REGEX MATCH "[0-9]+" param ${input})

if(NOT param)
    message(FATAL_ERROR "Invalid input")
endif()

factorial(${param} result)
message(STATUS "Factorial: ${result}")
