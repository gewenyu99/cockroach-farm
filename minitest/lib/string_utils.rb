# A utility class for string operations
class StringUtils
  # Reverses each word in a string but keeps their order
  # @param str [String] the input string
  # @return [String] the string with each word reversed
  def self.reverse_words(str)
    str.split.map { |word| word.reverse }.join(' ')
  end
  
  # Counts the number of vowels in a string
  # @param str [String] the input string
  # @return [Integer] the number of vowels
  def self.count_vowels(str)
    str.downcase.count('aeiou')
  end
  
  # Converts string to alternating case
  # @param str [String] the input string
  # @return [String] the string with alternating case
  def self.to_alternating_case(str)
    result = ''
    str.chars.each_with_index do |char, index|
      result += index.even? ? char.downcase : char.upcase
    end
    result
  end
end

