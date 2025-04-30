program q1_resistance
    implicit none
    real :: T(7)  !xvalues
    real :: R(7) !y values
    real :: xy(7), x2(7)
    real :: b,a !b is slop and a is intercept
    integer i
    data T/19.1,25.0,30.1,36.0,40.0,45.1,50.0/
    data R/76.30,77.80,79.75,80.80,82.35,83.90,85.10/

    do i = 1, 7
        xy(i)=T(i)*R(i)
        x2(i)=T(i)**2
    end do

    b = (sum(xy) - ((sum(T)*sum(R))/7.0))/(sum(x2)-((sum(T)**2)/7.0))
    a = (sum(R)/7.0)-b*(sum(T)/7.0)

    print*, 'slope is',b 
    print*, 'intercept is',a
end program q1_resistance