class Holler < ActiveRecord::Base
  belongs_to :user 
  validates :message, :user_id, presence: true
end
