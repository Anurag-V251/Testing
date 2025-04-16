program q1
    implicit none
    real::A(2,3)
    real::B(2,3),C(2,3)
    integer:: i,j
    data A/1,7,5,3,8,2/
    data B/13,8,15,27,9,12/

    do i = 1, 2
        do j = 1, 3
            C(i,j)=2.0*A(i,j)-3.0*B(i,j)
        end do
        
    end do
    write(*,*) "The resultant matrix is"
    do i = 1, 2
        write(*,*) (C(i,j),j=1,3)
    end do

    write(*,*) "The transpose is"
    do i = 1, 3
        write(*,*) (C(j,i),j=1,2)
    end do
end program q1