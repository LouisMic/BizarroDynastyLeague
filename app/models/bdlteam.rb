class Bdlteam < ApplicationRecord
  belongs_to :user
  has_many :players

  def full_name
    "#{city} #{nickname}"
  end
end
