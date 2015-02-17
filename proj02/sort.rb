def funny_sort(array)
    array.sort do |x,y| 
    	x_num = get_integer x
    	y_num = get_integer y
    	x_num <=> y_num
	end            
end

def get_integer(x)
	xNum = ''
	should_break = false
    x.each_char do |c|
    	puts c
    	if !(c !~ /\d/)
    		should_break = true
    		xNum << c
    	elsif should_break
    		break
    	end
    end
    xNum = xNum.to_i
end

a = ["abc99.6", "-100x500", "12sdaf"]
puts funny_sort(a)
