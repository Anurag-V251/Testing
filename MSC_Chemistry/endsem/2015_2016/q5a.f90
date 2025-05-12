program name
    dimension A(3,4),B(4,3)
    data A/3.24,3.88,1.31,4.25,7.24,2.34,8.72,3.24,8.64,7.64,8.50,4.89/

    do i = 1, 3
        do j = 1, 4
            B(j,i)=A(i,j)
        end do
        
    end do
    write(*,*) "The transposed matrix is:"
    do i = 1, 4
        write(*,10) B(i,1),B(i,2),B(i,3)
        10 format(3F10.2)
    end do
end program name