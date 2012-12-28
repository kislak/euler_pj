#ar = []
#10.upto(1000000).each do |e|
#	ar << e if e == e.to_s.split('').map{|e| e.to_i**5}.inject(:+)	
#end
#
#puts ar.inject(:+)

@ar = [1,2,5,10,20,50,100,200]
@res = []

def az(remainer, res)
  if remainer == 0
    res
  else
    @ar.each do |e|
      if (remainer - e) >= 0
        res << e
        @res << az(remainer - e, res)
        res = []
      end
    end
  end
end

az(25, [])

#puts @res.count
puts @res.compact.uniq.count
puts @res
