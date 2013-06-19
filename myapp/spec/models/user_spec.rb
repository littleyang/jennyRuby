require 'spec_helper'

describe User do
  describe "user creation" do
    it "should create an user no any wrong" do
      expect{
        user = FactoryGirl.create(:user)
      }.to change(User,:count).by(1)
    end
  end

  describe "user follow and following relation_ship" do
    before :each do
      @user_a = FactoryGirl.create(:user)
      @user_b = FactoryGirl.create(:user)
    end

    it "should correct follow an user" do
      expect{
        a_user = FactoryGirl.create(:user)
        b_user = FactoryGirl.create(:user)
      }.to change(User,:count).by(2)
    end

    it "when a user follow another shoud be true" do
      @user_a.follow!(@user_b).should == [false,false]
    end

    it "when a user check another whether it is his friend should be right" do
      @user_b.followed_by?(@user_a).should == true
    end

    it "should not be true when an no any relation ship between them" do
      @user_c = FactoryGirl.create(:user)
      @user_b.followed_by?(@user_c).should == false
    end

  end

end
