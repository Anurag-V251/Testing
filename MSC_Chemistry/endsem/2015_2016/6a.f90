program name
    a=0.0
    b=6.0

    h=0.05
    n = int((b-a)/h)+1
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

    ans = 3*x + (2*x)/(x**2+15)
    
end function func