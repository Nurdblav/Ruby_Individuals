p = []
p[0]=1
n=1
while (TRUE) do
    i = 0
    penta = 1
    p[n]=0
    while (penta<=n) do
        sign = (i % 4 >1) ? -1 : 1
        p[n] +=sign*p[n-penta];
        p[n] %= 1000000
        i +=1
        j = (i % 2 == 0) ? i/2 + 1 : -(i/2 + 1)
        penta = j*(3*j-1)/2
    end
    if (p[n]==0) then break end
    n +=1
end
puts n
#ruby C:/Users/wasto/Desktop/uni/3.2/Bug/Ind1.3.rb