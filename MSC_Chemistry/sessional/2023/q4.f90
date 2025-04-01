program name
    Dimension X(61),Y(61)
    a = 0.5
    b = 3.5
    h =0.05
    n = 61

    do i = 1, 61
        xi = a+(i-1)*h
        X(i)=1.0/(1.0+(xi-2.0)**2)
        Y(i)=exp(-(xi-2.0)**2)
    end do

    sum=0.0   !xy
    sum1=0.0  !x
    sum2=0.0   !y
    sum3=0.0   !x**2
    sum4=0.0   !y**2
    ! print*,X,Y
    do i = 1, 61
        sum = sum + X(i)*Y(i)
        sum1 = sum1 + X(i)
        sum2 = sum2 + Y(i)
        sum3 = sum3 + X(i)**2
        sum4 = sum4 + Y(i)**2
        ! print*,sum,sum1,sum2,sum3,sum4
    end do
    A = sum - sum1*sum2/61.0
    ! print*, A
    B = sqrt( (sum3-(sum1**2)/float(n))*(sum4-(sum2**2)/float(n))  )
    ! print*, B
    cc = A/B
    print*, cc !correlation coefficient
   
    

    d1 = sqrt((sum3)/61.0 - (sum1/61.0)**2)  !std devidation for 1
    d2 = sqrt((sum4)/61.0 - (sum2/61.0)**2)  !std deviation for 2

    t = sum1/61.0-sum2/61.0     !numerator
   
    d = sqrt(((d1**2)/61.0)+((d2**2)/61.0))  !denominator

    print*, t/D
end program name