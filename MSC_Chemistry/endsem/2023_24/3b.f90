program name
    dimension A(3,3),B(3,3),C(3,3)
    data A/4,3,2,8,7,3,7,8,9/
    data B/7,9,3,4,6,8,8,7,2/
    do i = 1, 3
        do j = 1, 3
            C(i,j)=0
            do k = 1, 3
                C(i,j) = C(i,j) + A(i,k)*B(k,j)
            end do
        end do
    end do
    write(*,*) "The product matrix is:"
    do i = 1, 3
        write(*,10) C(i,1),C(i,2),C(i,3)
        10 format(3F10.2)
    end do
end program name