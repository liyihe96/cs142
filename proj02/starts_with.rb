def each_starts_with(x, y)
    x.each do |s|
        if s.start_with?(y)
            yield(s)
        end
    end
end

each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst"], "ab") {|s| puts s}
    
