program prob2
    implicit none
    real sum    !initialize the variables
    integer i
    sum = 0      !starting value of sum
    do i = 1, 10               !loop for natural numbers 
        sum = sum + i          !adding each natural number encountered
    end do
    print*, sum                 !printing the result
end program prob2