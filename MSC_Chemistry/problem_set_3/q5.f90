program q5
    implicit none
    real a,b,sum,h,xi

    integer n,i
    n = 400
    a=0.0
    b=4.0
    h =(b-a)/float(n)
    sum = (h/3.0)*((a*(a+1.0))+(b*(b+1)))
    do i = 2, n
        xi = a+(i-1)*h
        if (modulo(i,2)==1) then
            sum = sum + (2.0*h/3.0)*(xi*(xi+1.0))
        else if (modulo(i,2)==0) then
            sum = sum + (4.0*h/3.0)*(xi*(xi+1.0))
        end if
    end do
    print*, 'Ans with simpsions rule', sum
    
end program q5