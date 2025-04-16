program q2
    implicit none
    real::Aa(5,5),II(5,5), R1(5,5), RR(5,5)
    integer::a,b,c
    integer:: i,j,k
    a=5
    b=5
    c=5
    do i = 1, 5
        do j = 1, 5
            if ( i==j ) then
                Aa(i,j)=0
                II(i,j)=1
            else
                Aa(i,j)=5
                II(i,j)=0
            end if
        end do
    end do
    call matmul(II,Aa,R1,5,5,5)
    RR = AA-R1
    
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