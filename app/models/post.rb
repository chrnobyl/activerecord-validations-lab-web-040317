class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction) }
  validates :title, format: { with: %r(Won't Believe|Secret|Top[0-9]|Guess)}
end
