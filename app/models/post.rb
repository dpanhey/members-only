class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..20 }
  validates :body, presence: true, length: { maximum: 200 }

  belongs_to :user
end
