require 'girl'
describe Girl do

  subject {Girl.new}
  its(:chance?){should_not be_true}

  it "she has been taken!" do
    subject.taken!
    subject.should_not be_chance
  end

end

