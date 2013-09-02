# encoding: utf-8

class PageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/pages/#{model.document.id}"
  end

  def filename
    "#{model.index}.#{file.extension}"
  end

end
