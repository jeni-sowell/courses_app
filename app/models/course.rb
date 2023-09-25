class Course < ApplicationRecord
  validates :title, presence: true
  validates :decription, presence: true, length : {minimum: 5}
end
