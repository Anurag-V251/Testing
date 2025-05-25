program q4
    
    sum = 0.0
    do i = 1, 12
        sum = sum + ((-1.0)**(i+1))*(1/float(i))
    end do
    print*, sum
end program q4