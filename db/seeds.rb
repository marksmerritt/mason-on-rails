require "faker"

# Reset
Admin.delete_all

# Create an Admin
Admin.create!(
  email: "admin@example.com",
  password: "helloworld"
)

puts "#{Admin.count} admin users created"
