require "faker"

puts "Seeding posts and comments..."

# Create 10 posts unless they already exist (idempotent-ish via find_or_create_by on title)
10.times do
	title = Faker::Book.unique.title
		post = Post.find_or_create_by!(title:) do |p|
			# Keep within current validation (max 128 chars)
			p.body = Faker::Lorem.sentence(word_count: rand(8..20))[0, 120]
		end

	# 0-3 comments per post
	rand(0..3).times do
		Comment.create!(post:, content: Faker::Lorem.sentence(word_count: rand(6..16)))
	end
end

puts "Done. Posts: #{Post.count}, Comments: #{Comment.count}"
