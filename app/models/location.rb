class Location < ActiveRecord::Base
  belongs_to :teacher, dependent: :destroy
end
