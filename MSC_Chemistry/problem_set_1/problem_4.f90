program prob4
    implicit none
    real ans,number
    integer i
    ans = 0.0
    do i = 1, 1000
        number = i+ 0.2
        ans = ans + number
    end do
    print*, 'value of sum till 1000 numbers is', ans
end program prob4