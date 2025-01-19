program question2
    implicit none
    real st,ed,number,increment,S1,S2,AN,Mean,std,mean2
    integer i,tot_num,j
    real, allocatable :: array1(:)  !!assigning a array of unknow length will be determined by seperation
    st =1.0
    ed =2.0
    increment = 0.001
    tot_num= int((ed-st)/(increment))+1 !(end-start)/seperation gives total number of points
    !plus 1 to include the end point
    ! print*, tot_num
      !!array of size = number of points
    allocate(array1(tot_num))
    i =1
    number =1.0
    do
        if ( number <=ed+(1.0d-4) ) then  !2+ increment will include 2 also
            array1(i)= (2.0*number) + 3.0
            ! print*,i, number
        end if
        number = number + increment
        if ( number >ed+(1.0d-4) ) then
            exit
        end if
        
        i = i+1
    end do
    ! print*, array1
    ! we can do it in the uper also also but for neetness one more loop
    S1 = 0.0       !values of sum_x will be stored here
    S2 = 0.0       !values of sum_x^2 will be stored here
    do j = 1,size(array1)
        S1= S1+array1(j)
        S2= S2+ (array1(j)**2)    
    end do
    AN = FLOAT(size(array1))
    Mean = S1/AN    !mean
    mean2 = Mean**2 !mean square
    std = sqrt((S2/AN) - mean2)   ! std = x^2 avg - x avg ^2
    write(*,*) "mean is", mean
    write(*,*) "std is", std
end program question2