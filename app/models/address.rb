class Address < ApplicationRecord
  def self.search(search)

    if search != ""
 
      Address.where('text LIKE(?)', "%#{search}%")
 
    else
 
      Address.all
 
    end
  end
 
end
