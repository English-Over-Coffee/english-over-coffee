class Location < ActiveRecord::Base
  belongs_to :teacher, dependent: :destroy

  has_attached_file :avatar,
                    :styles => { :square => "512x512#", :medium => "300x300>", :thumb => "100x100#" },
                    :default_url => "/images/:style/no_image.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
