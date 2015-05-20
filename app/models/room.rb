class Room < ActiveRecord::Base
  has_many :comments, :dependent => :delete_all
  
  validates :name, presence: true
end
