class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file # => 保存形式を指定
  process :resize_to_limit => [600, 600] # => 画像サイズの調整

  # => 画像ファイルの保存先の設定
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # サムネイル画像
  version :thumb do
    process resize_to_fill: [550, 300]
  end
end
