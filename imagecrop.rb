require 'mini_magick'

def resize_and_crop(image, w, h, offset)
      w_original =image[:width]
      h_original =image[:height]

      puts "***********************************************"
      puts "dimension: #{image.width}x#{image.height}"
      puts "***********************************************"

      image.crop ("#{(w/2).round}x#{h}+#{offset}+0")
      return image
    end


Dir.foreach('images') do |file|
  next if ['.', '..', '.DS_Store'].include? file || File.directory?(file)
  puts file
  # file = URI.encode(file) # escapar acentos
  image = MiniMagick::Image.open("images/#{file}")
  offset = 0
  image_left = resize_and_crop(image, image.width, image.height, offset)
  image_left.write  "pages/#{file}_left.tif"

  image = MiniMagick::Image.open("images/#{file}")
  offset = (image.width/2).round
  image_rigth = resize_and_crop(image, image.width, image.height, offset)
  image_rigth.write  "pages/#{file}_right.tif"
end
