program name
    a = 0.0
    b= 4.0
    n=100
    h=(b-a)/float(n)

    sum = (h/2.0)*(a*(a+1)+b*(b+1))
    do i = 1, n-1
        xi = a +i*h
        sum = sum + h*(xi*(xi+1))
    end do
    print*, sum
end program name