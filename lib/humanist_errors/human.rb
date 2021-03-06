module HumanistErrors
  module Human
    def to_s
      searcher = HumanistErrors::Search.new(self.class, super)
      if searcher.found_error == :no_result
        super
      else
        "#{HumanistErrors::STARTING_TOKEN} #{searcher.found_error} #{HumanistErrors::ENDING_TOKEN} \n" + super
      end
    end
  end
end

