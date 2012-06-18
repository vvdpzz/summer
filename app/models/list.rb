class List < ActiveRecord::Base
  attr_accessible :category_id, :compiled, :cover, :name
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  mount_uploader :cover, PhotoUploader
end
