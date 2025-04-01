program name
    a = 1.0
    b = 5.0
    h = 0.005
    n = 801

    sum = 0.0 !!sum
    do i = 1, n
        xi = a+(i-1)*h
        sum = sum + (3*xi+2) !sum over X
    end do
    print*, sum/float(n)
end program name