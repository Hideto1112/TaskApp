# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)
              
99.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

puts "Users Created"

admin_user = User.first
guest_user = User.find(2)
guest2_user = User.find(3)
guest3_user = User.find(4)
guest4_user = User.find(5)


50.times do |n|
  task_name = "タスク#{n + 1}"
  description = "タスク詳細#{n + 1}"
  admin_user.tasks.create!(name: task_name, description: description)
  guest_user.tasks.create!(name: task_name, description: description)
  guest2_user.tasks.create!(name: task_name, description: description)
  guest3_user.tasks.create!(name: task_name, description: description)
  guest4_user.tasks.create!(name: task_name, description: description)
end

puts "Tasks Created"