# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "Sarah's blog post #{blog}",
    body: "More Posts",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "This is the title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Etc",
    main_image: "http://placehold.it/350x400",
    thumb_image: "http://placehold.it/300x150"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "This is the title #{portfolio_item}",
    subtitle: "Angular",
    body: "Etc",
    main_image: "http://placehold.it/350x400",
    thumb_image: "http://placehold.it/300x150"
  )
end

puts "9 portfolios created"
