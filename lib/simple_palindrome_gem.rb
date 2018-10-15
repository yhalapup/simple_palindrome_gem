require_relative "simple_palindrome_gem/version"

class String

  #Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    self.chars.select { |char| char.match(/[a-z]/i) }.join
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    self.letters.downcase
  end
end
