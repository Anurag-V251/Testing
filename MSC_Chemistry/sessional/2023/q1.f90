program name
    a=0.0
    b=70.0
    n=701
    h=0.1

    sum =0.0
    do i = 1, 701
        xi=a+(i-1)*h
        sum=sum + (2*xi+3*(xi**5))
    end do
    mean = sum/701.0
    print*,mean
end program name