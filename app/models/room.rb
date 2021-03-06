class Room < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :messages

  validates :name, presence: true
  scope :sorted, lambda {order("name ASC")}
end
