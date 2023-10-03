class Lesson < ApplicationRecord
  include PublicActivity::Model
  belongs_to :course

  tracked owner: Proc.new{ |controller, model| controller.current_user }

  def to_s
    title
  end
end
