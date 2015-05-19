class Comment < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  
  validates :body, presence: true
end
