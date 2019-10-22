include LoadData

Given("I am on the AutomationPractice homepage") do
    @registration = Registration.new
    @registration.load
  end
  
  When("I submit a registration for a new user") do
    @data = NewUser.new.register_new_user_data
    @registration.register_new_user(@data[:email])
  end
  
  Then("I should have permission to access MyAccount") do
    expect(@registration.authentication_txt.text).to eq('Authentication')
  end
  
  When("I submit a registration for a new user with an invalid email") do
    @registration.register_new_user_error
  end
  
  Then("I should see the notification error message alert") do
    expect(@registration.error_email_msg_txt.text).to eq('Invalid email address.')
  end