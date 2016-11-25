class Year
  class << self

    def leap?(year)
      divisible_by_4_and_not_100?(year) || divisible_by_4_100_and_400?(year)
    end

    private

    def divisible_by_4_and_not_100?(year)
      year % 4 == 0 && year % 100 != 0
    end

    def divisible_by_4_100_and_400?(year)
      year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    end
  end
end

module BookKeeping
  VERSION = 2
end
