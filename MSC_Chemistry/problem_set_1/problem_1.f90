program counts
    implicit none
    integer i
    do i = 0, 10
        if (modulo(i,2)==1 ) then
            print*, i
        end if
    end do
end program counts