program name
    a = 0.25
    b= 15.00
    n = 295
    h = (b-a)/(n-1)

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

    ans = 8*x**3 + 3*x**2 +2
    
end function func