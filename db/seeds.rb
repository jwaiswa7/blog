# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_admin
  return if User.find_by_email('admin@gmail.com')

  puts 'creating admin'
  admin = User.create(
    name: 'Admin User',
    email: 'admin@gmail.com',
    password: 'topsecret',
    password_confirmation: 'topsecret'
  )
  admin.update(admin: true)
end

def create_users
  return if User.count > 3

  puts 'Creating users'
  i = 0
  3.times do
    User.create(
      name: Faker::Name.name,
      email: "user#{i}@gmail.com",
      password: 'topsecret',
      password_confirmation: 'topsecret'
    )
    i += 1
  end
end

def create_articles
  return if Article.count > 7

  puts 'Creating articles'
  User.all.each do |user|
    2.times do
      Article.create(
        title: Faker::Lorem.sentence,
        sub_title: Faker::Lorem.sentence,
        details: Faker::Lorem.paragraph(sentence_count: 10),
        user: user
      )
    end
  end
end

create_admin
create_users
create_articles
