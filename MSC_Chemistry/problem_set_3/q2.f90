program q2
    implicit none
    real a,b,h,sum
    integer i,n
    n = 8

    a = 0.0
    b = 0.8
    h = (b-a)/float(n)

    sum = (h/2.0)*(exp(a*tan(a))+exp(b)*tan(b))
    do i = 2, n
        sum = sum + h*exp(((i-1)*h)*tan((i-1)*h))
    end do
    print*, sum
end program q2