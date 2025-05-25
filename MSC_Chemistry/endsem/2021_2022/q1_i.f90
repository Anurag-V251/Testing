
program q1
Dimension x(701), y(701)
a = 0
b = 70
h = 0.1
n = (b - a) / h + 1

do i = 1, n
    x(i) = a + (i - 1) * h
    y(i) = 2*x(i) + 3*x(i)**5
end do

print*, sum(y)/float(n)

end program q1