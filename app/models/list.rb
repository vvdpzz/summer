class List < ActiveRecord::Base
  attr_accessible :category_id, :compiled, :cover, :name
  
  mount_uploader :cover, PhotoUploader
end
