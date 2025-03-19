program q1
    implicit none
    real::A(2,3)
    real::B(2,3),C(2,3)
    integer:: i,j
    A(1,1)=1
    A(1,2)=5
    A(1,3)=8
    A(2,1)=7
    A(2,2)=3
    A(2,3)=2

    B(1,1)=13
    B(1,2)=15
    B(1,3)=9
    B(2,1)=8
    B(2,2)=27
    B(2,3)=12

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