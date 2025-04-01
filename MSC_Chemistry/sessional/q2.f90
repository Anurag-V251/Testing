program name
    a = 0.0
    b= 0.8
    n=8
    h=(b-a)/float(n)

    sum = (h/2.0)*(exp(a*tan(a))+exp(b*tan(b)))
    do i = 1, n-1
        xi = a +i*h
        sum = sum + h*(exp(xi*tan(xi)))
    end do
    print*, sum
end program name