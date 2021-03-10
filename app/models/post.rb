class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validates :times, presence: true
  validates :importance, presence: true
  validates :memo, presence: true
end
