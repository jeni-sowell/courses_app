class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 5}
  has_rich_text :content
  belongs_to :user

  def to_s
    text
  end
end
