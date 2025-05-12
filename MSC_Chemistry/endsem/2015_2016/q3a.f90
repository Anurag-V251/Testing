program name
    read(*,*) x
    sum = 1.0
    if ( x >= 10 ) then
        do i = 1, int(x)
            sum = sum * (2*i-1)/(i**2)
        end do
    else
        print *, "x is less than 10"
    end if
    write(*,10) "P is ", sum
    10 format (a, E20.3)
end program name