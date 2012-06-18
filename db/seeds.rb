categories = ["Gifts", "Graphics", "Video", "Social Marketing", "Travel", "Writing", "Advertising", "Music & Audio", "Fun & Bizarre", "Tips & Advice", "Business", "Technology", "Programming", "Other"]
categories.each_with_index do |category, index|
  Category.create(name: category, rank: index + 1)
end
