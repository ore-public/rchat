class Comment < ActiveRecord::Base
  belongs_to :room
  belongs_to :user

  validates :body, presence: true

  def emit
    RestClient.post "http://127.0.0.1:3001/comment/#{self.room.id}", {}
  end
end
