program name
    Dimension X(10)
    data X/8,2,11,6,5,4,12,9,6,1/

    sum1 =0.0
    sum =0.0
    do i = 1, 10
        sum1 = sum1 + X(i)
        sum = sum + i
        
    end do
    R = sum1/sum
    print*, R
end program name