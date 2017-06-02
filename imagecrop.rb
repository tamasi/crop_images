require 'mini_magick'

def resize_and_crop(image, w, h, offset)
  puts "page: #{offset==0? 'left' : 'right'}"

  image.crop ("#{(w/2).round}x#{h}+#{offset}+0")
  return image
end

def process_image(file, side, page_number)
  image = MiniMagick::Image.open("images/#{file}")
  offset = (side == 'right')? image.width/2 : 0
  image = resize_and_crop(image, image.width, image.height, offset)
  #image.write "pages/#{file}_#{side}.tif"
  image.write "pages/inhide01-01_#{page_number}.tif"
end
page_number = 0
Dir.foreach('images') do |file|
  next if ['.', '..', '.DS_Store'].include? file || File.directory?(file)
  puts file
  puts "*"*65

  page_number += 1
  process_image(file, 'left', page_number)
  page_number += 1
  process_image(file, 'right', page_number)
end
