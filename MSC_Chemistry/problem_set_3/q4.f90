program q4
    implicit none
    real a,b,sum,h,xi,sum1

    integer n,i
    n = 10
    a=-1.0
    b=2.0
    h =(b-a)/float(n)
    sum = (h/3.0)*(a**3+exp(-1.0*a)+b**3+exp(-1.0*b))
    do i = 2, n
        xi = a+(i-1)*h
        if (modulo(i,2)==1) then
            sum = sum + (2.0*h/3.0)*(xi**3+exp(-1.0*xi))
        else if (modulo(i,2)==0) then
            sum = sum + (4.0*h/3.0)*(xi**3+exp(-1.0*xi))
        end if
    end do
    print*, 'Ans with simpsions rule', sum

    sum1 = h*(a**3+exp(-1.0*a)+b**3+exp(-1.0*b))/2.0
    do i = 2, n
        xi = a+(i-1)*h
        sum1= sum1 + h*(xi**3+exp(-1.0*xi))
    end do
    print*, 'Ans with trapezoidal rule', sum1

    write(*,*) 'Difference b/w the two methods', abs(sum1-sum)
end program q4