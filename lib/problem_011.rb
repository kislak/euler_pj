# In the 20×20 grid below,
# four numbers along a diagonal line have been marked in red.
# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
# What is the greatest product of
# four adjacent numbers in any direction (up, down, left, right, or diagonally)
# in the 20×20 grid?

s = File.read('files/problem_011.txt')
a = s.split("\n").map{ |e| e.split.map{|zz| zz.gsub(/^0/, '').to_i}}

max = 0
size  = a.size
ii = 0
jj = 0

0.upto(size - 4) do |i|
  0.upto(size - 1) do |j|
    s = (a[i][j] * a[i+1][j] * a[i+2][j] * a[i+3][j])
    if max < s
      (max = s) 
      ii = i; jj = j
    end

    if j < size - 3
      s = (a[i][j] * a[i][j+1] * a[i][j+2] * a[i][j+3])
      if max < s
        max = s 
        ii = i; jj = j
      end
      s = (a[i][j] * a[i+1][j+1] * a[i+2][j+2] * a[i+3][j+3])
      if max < s
        max = s 
        ii = i; jj = j
      end
    end

    if j > 3
      s = (a[i][j] * a[i+1][j-1] * a[i+2][j-2] * a[i+3][j-3])
      if max < s
        max = s 
        ii = i; jj = j
      end
    end
  end
end

puts max
