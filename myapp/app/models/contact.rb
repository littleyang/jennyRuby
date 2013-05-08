class Contact < ActiveRecord::Base
  attr_accessible :firstname, :lastname

  def name
    [firstname,lastname].join " "
  end

  def self.by_letter(letter)
    where("lastname LIKE ?","#{letter}%").order(:lastname)
  end

  def Contact.hi_letter(letter)
    where("lastname LIKE ?","#{letter}%").order(:lastname)
  end

end
