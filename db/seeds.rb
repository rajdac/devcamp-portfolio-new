# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(title: "Topic #{topic}")
end	

10.times do |blog|
	Blog.create!(
	 title: "My blog post #{blog}",
	 body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Sapien et ligula ullamcorper malesuada. Et pharetra pharetra massa massa ultricies mi. Dignissim diam quis enim lobortis scelerisque fermentum dui. Vestibulum lectus mauris ultrices eros in. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Consequat id porta nibh venenatis cras sed felis. Faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Hendrerit gravida rutrum quisque non tellus orci ac auctor augue. Turpis in eu mi bibendum neque egestas congue.",	
	topic_id: Topic.last.id	 )
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
	 title: "Skill no #{skill}",
	 percent_utilized: 15	
		)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
	 title: "Portfolio title #{portfolio_item}",
	 subtitle: "Ruby on Rails",
	 body: "Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Venenatis urna cursus eget nunc scelerisque. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Consequat semper viverra nam libero justo laoreet sit amet cursus. Quam adipiscing vitae proin sagittis. Duis ut diam quam nulla porttitor massa. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ut consequat semper viverra nam libero justo laoreet sit. Interdum consectetur libero id faucibus nisl tincidunt eget nullam. Dictumst quisque sagittis purus sit amet volutpat consequat mauris. Morbi tincidunt ornare massa eget egestas purus viverra accumsan in.",
	 main_image: "https://via.placeholder.com/600x400",
	 thumb_image: "https://via.placeholder.com/350x200"	
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
	 title: "Portfolio title #{portfolio_item}",
	 subtitle: "Angular",
	 body: "Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Venenatis urna cursus eget nunc scelerisque. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Consequat semper viverra nam libero justo laoreet sit amet cursus. Quam adipiscing vitae proin sagittis. Duis ut diam quam nulla porttitor massa. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ut consequat semper viverra nam libero justo laoreet sit. Interdum consectetur libero id faucibus nisl tincidunt eget nullam. Dictumst quisque sagittis purus sit amet volutpat consequat mauris. Morbi tincidunt ornare massa eget egestas purus viverra accumsan in.",
	 main_image: "https://via.placeholder.com/600x400",
	 thumb_image: "https://via.placeholder.com/350x200"	
		)
end
puts "9 portfolio items created"