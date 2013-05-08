require 'spec_helper'

describe Contact do

  it "should has a valid factory" do
    FactoryGirl.create(:contact).should be_valid
  end

  it "has a first name!" do
    FactoryGirl.build(:contact,firstname:nil).should be_valid
  end

  it "should have a last name!" do
    FactoryGirl.build(:contact,lastname:nil).should be_valid
  end
  it "should give full name for a contact!" do
    contact = FactoryGirl.build(:contact,firstname:"Jone",lastname:"Doe")
    contact.name.should == "Jone Doe"
  end
  it "test contacts class method  " do
    Jone = FactoryGirl.create(:contact,lastname:"Jone")
    James = FactoryGirl.create(:contact,lastname:"James")
    Duke = FactoryGirl.create(:contact,lastname:"Duke")

    Contact.by_letter("J").should == [James,Jone]
  end

  it "another test about the class method" do

    Jone = FactoryGirl.create(:contact,lastname:"Jone")
    James = FactoryGirl.create(:contact,lastname:"James")
    Duke = FactoryGirl.create(:contact,lastname:"Duke")

    Contact.hi_letter("J").should == [James,Jone]
  end

  describe "filter by last name!" do


    before :each do
      @smith = FactoryGirl.create(:contact, lastname: "Smith")
      @jones = FactoryGirl.create(:contact, lastname: "Jones")
      @johnson = FactoryGirl.create(:contact, lastname: "Johnson")
    end

    context "match letter s" do
      it "test contact class method" do
        Contact.by_letter("J").should include @jones
      end

      it "test that should contain smith M" do
        Contact.by_letter("S").should include @smith
      end
    end

    context "not macth letter " do
      it " test class method not include" do
        Contact.by_letter("J").should_not include @smith
      end
      it "should not contain @jones" do
        Contact.by_letter("S").should_not include @jones
      end
      it "should not include @jones" do
        Contact.by_letter("M").should_not include @jones
      end
      it "should not contain @smith" do
        Contact.by_letter("M").should_not include @jones
      end
      it "should not include @jones" do
        Contact.by_letter("K").should_not include @jones
      end

      it "should not contain the @jones" do
        Contact.by_letter("K").should_not include @jones
      end
      it "should not contain the @jones" do
        Contact.by_letter("O").should_not include @jones
      end

    end

  end
end
