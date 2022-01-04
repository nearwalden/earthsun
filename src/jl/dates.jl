# Computes julian days and gregorian calendar dates
using Printf

# function to create JD from Gregorian Y, M, D
function jd(y,m,d)
    if m > 2
        y1 = y
        m1 = m
    else
        y1 = y - 1
        m1 = m + 12
    end
    a = floor(y1/100)
    # @printf("a=%i\n", a)
    b = 2 - a + floor(a/4)
    # @printf("b=%i\n", b)
    floor(365.25 * (y1 + 4716)) + floor(30.6001 * (m1 + 1)) + d + b - 1524.5
end
