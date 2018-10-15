RSpec.describe SimplePalindromeGem do
  it "has a version number" do
    expect(SimplePalindromeGem::VERSION).not_to be nil
  end

  it "returns false for non-palindrome" do
    expect("apple".palindrome?).to eq(false)
  end

  it "returns true for simple palindrome" do
    expect("racecar".palindrome?).to eq(true)
  end

  it "returns true for mixed case palindrome" do
    expect("Racecar".palindrome?).to eq(true)
  end

  it "returns true for palindrome with punctuation" do
    expect("Madam, I'm Adam.".palindrome?).to eq(true)
  end

  describe "#letters" do
    it "returns word without punctuation" do
      expect("Madam, I'm Adam.".letters).to eq(
        "MadamImAdam"
      )
    end
  end
end
