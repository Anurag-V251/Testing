program name
    a = 0.0
    b = 4.0
    n = 400
    h = (b-a)/float(n)

    sum = (h/3.0)*(a*(a+1)+b*(b+1))

    do i = 1, n-1
        xi=a+i*h
        if ( modulo(i,2)==0 ) then
            sum = sum + (h/3.0)*(2*(xi*(xi+1)))
        else
            sum = sum + (h/3.0)*(4*(xi*(xi+1)))
        end if
    end do
    print*, sum
end program name