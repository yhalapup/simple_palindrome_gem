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
end
