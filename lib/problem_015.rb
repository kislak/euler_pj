#20*20
@ar = Array.new
@n = 20
0.upto(@n) {|i| @ar[i] = []}
0.upto(@n) {|i| @ar[i][0] = 1; @ar[0][i]= 1}

def foo(i,j)
  if i != j 
    z = @ar[i][j] || @ar[j][i]
    z ||= (foo(i-1,j) + foo(i,j-1))
    @ar[i][j] = z
    @ar[j][i] = z
    z
  else
    @ar[i][j] ||= foo(i-1,j) *2
  end
end

puts foo(@n,@n)
