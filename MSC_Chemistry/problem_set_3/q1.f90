program q1
    implicit none
    real a,b,sum,h
    integer i,n
    n = 100
    a = 0.0
    b = 4.0

    h = (b-a)/float(n)
    sum = h*((0*(0+1))+(4*5))/2.0
    do i = 2, n
        sum = sum + h*((i-1)*h)*((i-1)*h + 1.0)
    end do
    print*, sum
end program q1