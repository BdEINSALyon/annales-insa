# encoding: utf-8

class DocumentUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/original"
  end

  def extension_white_list
    %w(jpg jpeg pdf)
  end

  def filename
    "#{model.id}.#{file.extension}"
  end
end
