program q3
    a = 1
    b=1       !values of the coefficient
    c =1

    Disc = b**2 - 4*a*c
    if (Disc < 0) then
        print *, "Roots are imaginary"
        real_part = -b / (2*a)
        imag_part = sqrt(-Disc) / (2*a)
        print *, "Root 1: ", real_part, " + ", imag_part, "i"
        print *, "Root 2: ", real_part, " - ", imag_part, "i"
    else
        root1 = (-b + sqrt(Disc)) / (2*a)
        root2 = (-b - sqrt(Disc)) / (2*a)
        print *, "Roots are real and distinct"
        print *, "Root 1: ", root1
        print *, "Root 2: ", root2
    end if
    if (Disc == 0) then
        print *, "Roots are real and equal"
        print *, "Root: ", -b / (2*a)
    end if
    if (Disc > 0) then
        print *, "Roots are real and distinct"
        print *, "Root 1: ", (-b + sqrt(Disc)) / (2*a)
        print *, "Root 2: ", (-b - sqrt(Disc)) / (2*a)
    end if

    
end program q3