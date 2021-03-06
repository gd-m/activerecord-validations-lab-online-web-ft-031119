class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :title , clickbait_title: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-fiction),
    message: "%{value} is not a valid category" }

end
