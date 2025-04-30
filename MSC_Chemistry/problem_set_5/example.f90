program q1_resistance
    implicit none
    real :: T(10)  !xvalues
    real :: R(10) !y values
    real :: xy(10), x2(10)
    real :: b,a !b is slop and a is intercept
    real :: comp(10),error(10)
    integer i
    data T/8,2,11,6,5,4,12,9,6,1/
    data R/3,10,3,6,8,12,1,4,9,14/

    do i = 1, 10
        xy(i)=T(i)*R(i)
        x2(i)=T(i)**2
    end do

    b = (sum(xy) - ((sum(T)*sum(R))/10.0))/(sum(x2)-((sum(T)**2)/10.0))
    a = (sum(R)/10.0)-b*(sum(T)/10.0)

    print*, 'slope is',b 
    print*, 'intercept is',a

    do i = 1, 10
        comp(i)= a + b*T(i)
        error(i)= (R(i)-comp(i))**2 !error square
    end do

    print*, 'Error is', sum(error)
end program q1_resistance