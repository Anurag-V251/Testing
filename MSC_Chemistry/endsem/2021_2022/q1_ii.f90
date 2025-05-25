program q2

    a=5
    b=135

    h=0.01
    n = int((b-a)/h)
    sum = h/3.0*(a**2 +3*a + b**2 + 3*b)
    
    do i = 1, n-1
        x = a + (i)*h
        if (mod(i,2) == 0) then
            sum = sum + (2*h/3.0)*(x**2 + 3*x)
        else
            sum = sum + (4*h/3.0)*(x**2 + 3*x)
        end if
        
    end do
    print *, "integral value is ", sum

    
end program q2