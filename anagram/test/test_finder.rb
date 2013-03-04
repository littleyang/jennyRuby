require 'test/unit'
require 'shoulda'
require '~/jennyRuby/anagram/lib/anagram/finder'

class TestFinder < Test::Unit::TestCase
  context "describe the signature" do
    {"cat"=>"act","act"=>"act","wombat"=>"abmotw"}.each do |word,signature|
      should "be #{signature} for #{word}" do
        assert_equal signature,Anagram::Finder.signature_of(word)
      end
    end
  end

  context "describe lookup" do
    setup do
      @finder = Anagram::Finder.new(["cat","wombat"])
    end
    should "return word if word given" do
      assert_equal ["cat"],@finder.lookup("act")
    end
    should "return word if anagram given" do
      assert_equal ["cat"],@finder.lookup("act")
      assert_equal ["cat"],@finder.lookup("tca")
    end
    should "return nil if no word matchs anagram" do
      assert_nil @finder.lookup("wibble")
    end
  end
end


