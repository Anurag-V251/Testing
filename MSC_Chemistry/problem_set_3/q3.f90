program q3
    implicit none
    real a,b,sum,h,xi

    integer n,i
    n = 6
    a=0.0
    b=6.0
    h =(b-a)/float(n)
    sum = (h/3.0)*(exp(-1.0*(a**2))+exp(-1*(b**2)))
    do i = 2, n
        xi = a+(i-1)*h
        if (modulo(i,2)==1) then
            sum = sum + (2.0*h/3.0)*(exp(-1.0*(xi**2)))
        else if (modulo(i,2)==0) then
            sum = sum + (4.0*h/3.0)*(exp(-1.0*(xi**2)))
        end if
        
    end do
    print*, sum
end program q3