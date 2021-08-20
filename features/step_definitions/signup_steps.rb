require_relative '../pages/landing-page.rb'

Given(/^I am a (.+) user$/) do |domain_type|
    @user_attrs = { username: "#{Faker::Internet.username}", 
                    suffix: "#{SecureRandom.hex(10)}", 
                    domain: domain_type, 
                    name: "#{Faker::Name.name}" 
                  }
    @email_address = "#{@user_attrs[:username]}+#{@user_attrs[:suffix]}@#{@user_attrs[:domain]}"
end

When(/^I am on the (.+)$/) do |page_name| 
    @landing_page = Object.const_get(page_name).new(@browser)
    @landing_page.visit
    case page_name
    when 'LandingPage'
        expect(@landing_page.browser.title).to eq("Free Online Appointment Scheduling Software - Calendly")
    end
 end 
 And(/^I enter my email address into the sign up text box$/) do
     @landing_page.enter_email_address(@email_address)
 end   
 When(/^I submit email$/) do
     @landing_page.submit_email 
 end 
 Then(/^I am redirected to the (.+)$/) do |page| 
    case page
    when 'choose auth page'
        expect(@landing_page.choose_auth_page_google).to exist 
    when 'sign up page'
        expect(@landing_page.signup_page_element).to exist
    end
end 
Given(/^the current page is the (.+)$/) do |page|
end 

 Then(/^I can (.+)$/) do |action|
    case action
    when 'click password auth'
        @landing_page.create_password_account_button 
    when 'click google auth'
        @landing_page.choose_auth_page_google.click
    when 'click outlook auth'
        @landing_page.choose_auth_page_outlook.click
    when 'verify I am on the sign up page'
        expect(@landing_page.signup_page_element).to exist
    end 
 end

When(/^I set name text field/) do 
    @landing_page.set_name_text_field(@user_attrs[:name])
end 
When(/^I set the password text field$/) do 
    @landing_page.set_password_text_field('PASSWORD')
end
And(/^I click submit$/) do 
    @landing_page.submit_signup 
end
Then(/^I will be directed to the (.+)$/) do |redirect_page|
    case redirect_page
    when 'google oauth page'
        expect(@landing_page.browser.url).to include('accounts.google')
    when 'outlook oauth page'
        expect(@landing_page.browser.url).to include('login.microsoftonline')
    when 'invitation confirmation screen'
        expect(@landing_page.invitation_sent_text).to eq('Before continuing, we need to verify your email address. Please check your inbox for a confirmation link.')
    end 
end 

