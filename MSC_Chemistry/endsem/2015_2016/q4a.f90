program name
    a = 0.0
    b= 5.0
    h= 0.01
    n = int((b-a)/h)+1

    sum = h/2.0*(func(a)+func(b))
    do i = 1, n-1
        x = a + (i)*h
        sum = sum + (h)*(func(x))
    end do
    print *, "integral value is ", sum
end program name

function func(x) result(ans)
    real, intent(in) :: x
    real :: ans

    ans = 3*x**2 + 2*x + 5
    
end function func