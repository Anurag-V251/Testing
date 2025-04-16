program q2
    implicit none
    real::P(3,3),R1(3,3),R2(3,3),Q(3,3),R(3,3)
    integer::a,b,c
    integer:: i,j,k
    a=3
    b=3
    c=3
    data P/1,0,0,0,1,0,0,0,1/
    call matmul(P,P,R1,3,3,3)
    call matmul(P,R1,R2,3,3,3)
    ! end do
    do i = 1, 3
        do j = 1, 3
            Q(i,j)=3.0*R1(i,j)-2.0*R2(i,j)
        end do
        
    end do
    write(*,*) "Then matrix Q is"
    do i = 1, a
        write(*,*) (Q(i,j),j=1,c)
    end do

    do i = 1, 3
        do j = 1, 3
            R(i,j)=Q(i,j)-Q(j,i)
        end do
        
    end do

    write(*,*) "The R matrix is"
    do i = 1, a
        write(*,*) (R(i,j),j=1,c)
    end do

    contains
    subroutine matmul(mat1,mat2,mat3,a,b,c)
        integer, intent(in) :: a,b,c
        real, intent(in) :: mat1(a,b),mat2(b,c)
        real, intent(out) ::  mat3(a,c)

        do i = 1, a
            do j = 1, c
                mat3(i,j)=0.0
                do k = 1, b
                    mat3(i,j)=mat3(i,j)+ mat1(i,k)*mat2(k,j)
                end do
            end do
            
        end do
    end subroutine matmul
end program q2