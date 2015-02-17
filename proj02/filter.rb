def filter(s, options = [])
    s.each do |x|
        flag = true
        options.each do |key, value|
            case key
            when :min
                if x < value
                    flag = false
                end
            when :max
                if x > value
                    flag = false 
                end
            when :odd
                if x % 2 == 0
                    flag = false 
                end
            when :even
                if x % 2 == 1
                    flag = false
                end
            when :scale
                x *= value
            end
        end
        if flag
            yield(x)
        end
    end
end

nums = [6, -5, 319, 400, 18, 94, 11]
puts filter(nums, :min => 10, :max => 350, :odd => 1, :scale => 2) {|n| puts n}
filter(nums, :max => 0) {|n| puts n}
filter(nums) {|n| puts n}
