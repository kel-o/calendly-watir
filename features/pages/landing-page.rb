class LandingPage
    include PageObject
    
    def initialize(browser)
        @browser = browser
        @HOST_NAME = 'bravo-qa.calendly.com'
        # @my_page_object = MyPageObject.new(@browser)
    end 

    def visit
        @browser.goto "#{@HOST_NAME}"
    end 

    def email_textbox
        @browser.text_field(name: 'email', :index => 1 )
    end 
    
    
    def enter_email_address(email)
        @browser.text_field(name: 'email', :index => 1 ).set email
    end 

    def submit_email
        @browser.button(type: 'submit', :index => 1).click 
    end 

    # in signup_steps.rb, we check for the existence of this element to verify the current page
    def auth_page_element
        @browser.span(class: 'icon-google').wait_until(&:present?)
    end 

     # in signup_steps.rb, we check for the existence of this elemtn to verify the current page
    def signup_page_element
        @browser.button(value: 'Continue').wait_until(&:present?)
    end

    def create_password_account_button 
        @browser.button(text: 'Click here').click()
    end 

  
    def set_name_text_field(name) 
        @browser.text_field(name: 'name').set name
    end 

    def set_password_text_field(password)
        @browser.text_field(name: 'password').set password
    end

    def submit_signup 
        @browser.button(value: 'Continue').click
    end 

    def invitation_sent_text 
        @browser.element(class: 'pbl').text
    end

end 