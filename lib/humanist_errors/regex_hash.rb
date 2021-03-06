module HumanistErrors
  class RegexHash < Hash
    def [](value)
      result = self.select{|k| k =~ value}
      if result.empty?
        fail "Could not find Ruby message in dictionary: #{value}"
      else
        result.shift[1]
      end
    end
  end
end

