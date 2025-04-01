program name
    Dimension X(10),Y(10)
    data X/8,2,11,6,5,4,12,9,6,1/
    data Y/3,10,3,6,8,12,1,4,9,14/

    sum=0.0
    sum1=0.0

    do i = 1, 10
        sum =sum+ (X(i)**2)*(Y(i))
        sum1 = sum1 + (X(i))*(Y(i)**2)
    end do

    R = sum/sum1
    print*, R
end program name