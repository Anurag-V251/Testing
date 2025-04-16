program q2
    implicit none
    real::II(4,4),R1(4,4),R2(4,4),RR(4,4)
    integer::a,b,c
    integer:: i,j,k
    a=4
    b=4
    c=4
    do i = 1, 4
        do j = 1, 4
            if ( i==j ) then
                II(i,j)=1
            else
                II(i,j)=0
            end if
        end do
    end do
    call matmul(II,II,R1,4,4,4)
    call matmul(II,R1,R2,4,4,4)
    
    RR= R2-(1/2.0)*R1
    
    write(*,*) "Then matrix R is"
    do i = 1, a
        write(*,*) (RR(i,j),j=1,c)
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