# require "mrfazry_palindrome/version"

module MrfazryPalindrome

  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  def processed_content
    self.to_s.scan(/[a-z||\d?]/i).join.downcase
  end
end

class String
  include MrfazryPalindrome
end

class Integer
  include MrfazryPalindrome
end
