class Image 

    def initialize(numbers)
      @images = []
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
end
        

image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
    ])


image.output_image 
