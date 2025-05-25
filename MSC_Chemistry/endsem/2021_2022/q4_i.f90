program name
    Dimension P(3),V(3),PV(3)
    Data P/2,5,20/
    Data V/5,2,0.5/



    do i = 1, 3
        PV(i) = P(i) * V(i)
    end do

    write(*,10) 'Pressure (P)', 'Volume (V)', 'PV'
    10 format(A,6X,A,6X,A)
    do i = 1, 3
        write(*,*) P(i), V(i), PV(i)
        
    end do
   
end program name