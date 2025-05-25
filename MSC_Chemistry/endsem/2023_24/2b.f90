program name
    a=0.156
    b=13.884

    h=0.039
    n = int((b-a)/h)
    sum = h/3.0*(func(a)+func(b))
    
    do i = 1, n-1
        x = a + (i)*h
        if (mod(i,2) == 0) then
            sum = sum + (2*h/3.0)*(func(x))
        else
            sum = sum + (4*h/3.0)*(func(x))
        end if
        
    end do
    print *, "integral value is ", sum
end program name

function func(x) result(ans)
    real, intent(in) :: x
    real :: ans

    ans = x**2 + 7*x + 8
    
end function func