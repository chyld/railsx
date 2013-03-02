User.delete_all
Bill.delete_all

u1 = User.create(:email => 'bob@aol.com', :password => 'a', :password_confirmation => 'a')

b1 = Bill.create(:name => 'rent', :description => 'the rent', :amount => 10_000, :day => 1)
b2 = Bill.create(:name => 'cable', :description => 'the cable', :amount => 150, :day => 5)
b3 = Bill.create(:name => 'creditcard', :description => 'the cc', :amount => 55, :day => 11)

u1.bills = [b1, b2, b3]
