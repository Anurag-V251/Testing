program name
    a=0.0
    b=8.5
    h=0.05
    n=171
    print*,'concentration','    I(C)'
    do i = 1, 171
        xi=a+(i-1)*h
        f= 1.0/(exp(2.0-(xi-1.0)**2))
        print*, xi,f
    end do
    
end program name