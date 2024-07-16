! recursion.f90
program recursion_example
    implicit none
    integer :: param, result
    character(len=10) :: input

    write(*, '(A)', advance='no') "Enter an integer: "
    read(*, '(A)') input
    read(input, *) param

    if (param == 0 .and. trim(input) /= "0") then
        write(*, '(A)') "Invalid input"
        stop
    end if

    result = factorial(param)
    write(*, '(I0)') "Factorial: ", result
end program recursion_example

recursive function factorial(n) result(res)
    integer, intent(in) :: n
    integer :: res

    if (n <= 1) then
        res = 1
    else
        res = n * factorial(n - 1)
    end if
end function factorial
