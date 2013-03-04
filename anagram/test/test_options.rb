require 'test/unit'
require 'shoulda'
require '~/jennyRuby/anagram/lib/anagram/options'

class TestOption<Test::Unit::TestCase
  context "spicifying no directory" do
    should "return default directory" do
      opts = Anagram::Options.new(["someword"])
      assert_equal Anagram::Options::DEFAULT_DICTIONARY,opts.dictionary
    end
  end
  context "specifying a dictionary" do
    should "return it" do
      opts = Anagram::Options.new(["-d",
      "mydict", "someword"])
      assert_equal "mydict", opts.dictionary
    end
  end
  context "specifying words and no dictionary" do
    should "return the words" do
      opts = Anagram::Options.new(["word1", "word2"])
      assert_equal ["word1", "word2"], opts.words_to_find
    end
  end
  context "specifying words and a dictionary" do
    should "return the words" do
      opts = Anagram::Options.new(["-d",
      "mydict", "word1", "word2"])
      assert_equal ["word1", "word2"], opts.words_to_find
    end
  end

end
