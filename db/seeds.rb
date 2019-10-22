require "faker"

#------------------ Reset ------------------#
Course.delete_all
Admin.delete_all



#------------------ Create Admin ------------------#

Admin.create!(
  email: "admin@example.com",
  password: "helloworld"
)

puts "#{Admin.count} admin users created"


#------------------ Create Courses ------------------#

5.times do 
  Course.create!(
    title: Faker::Educator.course_name
  )
end

puts "#{Course.count} courses created"