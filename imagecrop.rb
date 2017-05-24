require 'mini_magick'	

def resize_and_crop(image, w, h, offset)
      w_original =image[:width]
      h_original =image[:height]

      # if (w_original*h != h_original * w)
      #   if w_original*h >= h_original * w
      #     # long width
      #     h_original_new = h_original
      #     w_original_new = h_original_new * (w.to_f / h)
      #   elsif w_original*h <= h_original * w
      #     # long height
      #     w_original_new = w_original
      #     h_original_new = w_original_new * (h.to_f / w)
      #   end
      # else
      #    # good proportions
      #    h_original_new = h_original
      #    w_original_new = w_original

      # end


      # v1. remove extra space
=begin
      if w_original_new != w_original
        remove = ((w_original - w_original_new)/2).round
        image.shave("#{remove}x0")
      end
      if h_original_new != h_original
        remove = ((h_original - h_original_new)/2).round
        image.shave("0x#{remove}")
      end
=end

      # v2. or use crop instead of shave
# read about params for crop here: http://www.imagemagick.org/www/command-line-processing.html#geometry
      # if w_original_new != w_original || h_original_new != h_original
      #   x = ((w_original - w_original_new)/2).round
      #   y = ((h_original - h_original_new)/2).round
      #   image.crop ("#{w_original_new}x#{h_original_new}+#{x}+#{y}")
      # end

      #
      #image.resize("#{w}x#{h}")
      puts "***********************************************"
      puts image.width
      puts image.height
      puts "***********************************************"

      image.crop ("#{(w/2).round}x#{h}+#{offset}+0")
      return image
    end


# Usage:

filename = '1.tif'

image = MiniMagick::Image.open(filename)
offset = 0
image_left = resize_and_crop(image, image.width, image.height, offset)
image_left.write  "#{filename}_left.tif"

image = MiniMagick::Image.open(filename)
offset = (image.width/2).round
image_rigth = resize_and_crop(image, image.width, image.height, offset)
image_rigth.write  "#{filename}_right.tif"