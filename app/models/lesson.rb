class Lesson < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
  has_many :vocabularies
  has_many :phrases
end
