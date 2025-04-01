program name
    a=-1.0
    b=2.0
    n=1000
    h=(b-a)/n

    !!simpsions
    sum = (h/3.0)*(a**3+exp(-a)+b**3+exp(-b))
    do i = 1, n-1
        xi = a +i*h
        if ( modulo(i,2)==0 ) then
            sum = sum + (h/3.0)*(2*(xi**3+exp(-xi)))
        else
            sum = sum + (h/3.0)*(4*(xi**3+exp(-xi)))
        end if
    end do

    !!
    sum1 = (h/2.0)*(a**3+exp(-a)+b**3+exp(-b))
    do i = 1, n-1
        xi = a+i*h
        sum1 = sum1 + h*(xi**3+exp(-xi))
    end do
    print*, 'simpsions ans',sum
    print*, 'trapozoidal ans',sum1
end program name