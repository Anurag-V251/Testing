program q2
    implicit none
    real::A_inv(3,3),Bb(3,1),xyz(3,1)
    integer:: i,j,k,a,b,c
    a=3
    b=3
    c=1
    data A_inv/2,-1,-1,1,1,-2,1,1,1/
    data Bb/2,1,7/
    A_inv = (1/3.0)*A_inv
    call matmul(A_inv,Bb,xyz,3,3,1)
    

    write(*,*) "Then x,y and z are"
    do i = 1, a
        write(*,*) (xyz(i,j),j=1,c)
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