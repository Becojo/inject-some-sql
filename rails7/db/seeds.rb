["Bob", "Jim", "Sarah", "Tina", "Tony"].each do |name|
  User.create :name => name, :password => "#{name}pass", :admin => false, :age => (rand(60) + 18)
end

User.create :name => "Admin", :password => "supersecretpass", :admin => true, :age => (rand(60) + 18)

first_user_id = User.first.id

Order.create :user_id => first_user_id, :total => 10
Order.create :user_id => (first_user_id + 1), :total => 500
Order.create :user_id => (first_user_id + 3), :total => 1

