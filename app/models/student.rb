class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :lessons
  has_many :teachers, through: :lessons
  has_many :vocabularies, through: :lessons
  has_many :phrases, through: :lessons

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,
                    :styles => { :square => "512x512#", :medium => "300x300>",
                                 :thumb => "100x100#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
