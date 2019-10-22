class Registration < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  #home  
  element :sign_in_link, 'a.login'
  element :email_field, '#email_create'
  element :submit_btn,'#SubmitCreate'
  element :error_email_msg_txt, '#create_account_error'

  #authentication
  element :authentication_txt, '.navigation_page'
  

  def register_new_user(email)
    sign_in_link.click
    email_field.set email
    submit_btn.click
  end

  def register_new_user_error
    sign_in_link.click
    email_field.set 'teste'
    submit_btn.click
  end
end