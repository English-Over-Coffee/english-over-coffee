class Vocabulary < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
  belongs_to :lesson
end
