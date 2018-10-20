class User < ApplicationRecord
  searchkick

  validates :name, presence: true
end
