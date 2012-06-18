# encoding: utf-8
require 'carrierwave/processing/mime_types'

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes
  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper
  
  process :set_content_type

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  end
  
  version :a do
    process :resize_to_fit => [200, 150]
  end
  
  version :b do
    process :resize_to_fit => [560, 420]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    model.salt ||= SecureRandom.hex
    "#{model.salt}.#{file.extension.downcase}" if original_filename
  end
end
