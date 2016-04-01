# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
25.times do
  user = User.create!(full_name: Faker::Name.name,
                      username: Faker::Internet.user_name)
  5.times do
    link = Link.create!(title: Faker::Internet.url,
                        body: Faker::Hipster.sentence,
                        user_id: user.id)

    rand(1..100).times do
      Upvote.create!(link_id: link.id)

      rand(1..100).times do
        Downvote.create!(link_id: link.id)
      end
    end
  end
end
