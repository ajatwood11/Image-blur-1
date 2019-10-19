class Image 

    

    def initialize(numbers)
      @images = numbers 
    end

    def output_image
          @images.each do |row|
                  row.each  do |num|
                print "#{num}"
              end
              puts ""
        end
    end

    def blur(distance = 1)
      distance.times do
        blur_image
      end
    end

    
    def width
      @images[0].length
    end

    
    def height
      @images.length
    end

    private 
    
    def blur_image
      on_images = []
      @images.each_with_index do |row, y|
        row.each_with_index do |num, x|
          on_images << [x, y] if num == 1
        end
      end

    on_images.each do |coord|
      x, y = coord
      @images[y][x - 1] = 1 if x - 1 >= 0
      @images[y][x + 1] = 1 if x + 1 <= (width - 1)
      @images[y - 1][x] = 1 if y - 1 >= 0
      @images[y + 1][x] = 1 if y + 1 <= (height - 1)
    end
  end
end





  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
    ])
image.blur
image.output_image 
