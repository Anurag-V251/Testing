program question1
    implicit none     !this controls which variable is of which type(real, integer etc)
    integer N,i   !number of values
    real S1,S2,X,AN,Mean,std,mean2 

    write(*,*) 'Enter the value of N'
    read(*,*) N
    write(*,*) 'Enter the X values'

    S1 = 0.0       !values of sum_x will be stored here
    S2 = 0.0       !values of sum_x^2 will be stored here
    do i = 1, N
        read(*,*) X
        S1 = S1+X
        S2 = S2+(X**2)
    end do

    AN = FLOAT(N)  !!crucial to convert N=10 to 10.0 coz it will divide issue
    Mean = S1/AN    !mean
    mean2 = Mean**2 !mean square
    std = sqrt((S2/AN) - mean2)   ! std = x^2 avg - x avg ^2
    write(*,*) "mean is", mean
    write(*,*) "std is", std
end program question1