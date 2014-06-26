class User < ActiveRecord::Base

  has_many :hollers

  validates :first_name, :last_name, :mood, presence: true

  def self.by_first_name(first_name)
    where(first_name: first_name)
  end

  def name
    [first_name, last_name].join(' ')
  end

  def mood
    @user = User.mood
  end

end
