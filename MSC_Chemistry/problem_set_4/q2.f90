program q2
    implicit none
    real::M(2,3)
    real::N(3,4),T(2,4)
    integer:: i,j,k
    data M/1,4,2,5,3,6/
    data N/5,-1,0,6,-2,9,7,-3,0,8,-4,9/

    do i = 1, 2
        do j = 1, 4
            T(i,j)=0.0
            do k = 1, 3
                T(i,j)=T(i,j)+ M(i,k)*N(k,j)
            end do
        end do
        
    end do
    write(*,*) "The resultant matrix is"
    do i = 1, 2
        write(*,*) (T(i,j),j=1,4)
    end do

    write(*,*) "The transpose is"
    do i = 1, 4
        write(*,*) (T(j,i),j=1,2)
    end do
end program q2