class Contact < ActiveRecord::Base
  attr_accessible :firstname
  attr_accessible :lastname
  validates :firstname,:presence => true
  validates :lastname,:presence => true

end
