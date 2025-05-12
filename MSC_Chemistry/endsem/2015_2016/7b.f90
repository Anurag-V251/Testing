program name
    read(*,*) x
    sum = 0.0
    n=10

    do i = 1, n
       sum = sum + ((-1)**(i+1))* x**(2*i-2)/factorial(2*i-2) 
    end do

    print *, "P is ", sum
end program name
function factorial(n) result(ans)
    integer, intent(in) :: n
    real :: ans
    integer :: i

    ans = 1
    if (n < 0) then
        print *, "Error: negative input"
        return
    end if

    do i = 1, n
        ans = ans * i
    end do

end function factorial