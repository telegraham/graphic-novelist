# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


10.times do 
  @strip = Strip.create(title: Faker::HarryPotter.quote, 
              published: Faker::Boolean.boolean(0.7))

  8.times do |idx|
    @strip.cells << Cell.new(image_url: Faker::Placeholdit.image("480x320", 'gif', 'ff8866'),
                             sort_order: idx, 
                             framed: Faker::Boolean.boolean(0.5))
  end
end