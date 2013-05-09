require 'faker'
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do |f|
    f.lastname {Faker::Name.first_name}
    f.firstname {Faker::Name.last_name}
  end

  factory :invlid_contact,parent: :contact do |f|
    f.firstname nil
  end

end
