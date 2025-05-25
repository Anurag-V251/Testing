program name
    Dimension x(171), y(171)
    a=0.0
    b= 8.5
    h = 0.05

    n = int((b-a)/h)+1
    do i = 1, 171
        x(i) = a + (i - 1) * h
        y(i)=1.0/(exp(2-(x(i)-1)**2))
    end do

    write(*,10) 'Concentraion','Intensity'
    10 format(A,6X,A)
    do i = 1, n
        write(*,*) x(i), y(i)
    end do
end program name