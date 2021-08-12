# require 'pry'
# require 'watir'

# browser = Watir::Browser.new :chrome
# browser.goto ''
# binding.pry

# browser.text_field(name: 'email', :index => 1 ).set 'kel.okekpe+watir11@calendly.com'
# browser.button(type: 'submit', :index => 1).click
# browser.p(:index => 0).text
# browser.button(value: 'Click here').click
# binding.pry
# browser.text_field(name: 'name').set 'Kel'
# browser.text_field(name: 'password').set 'PASSWORD'
# browser.button(value: 'Continue').click

# expect(browser.element(class: 'pbl').text).to eq("Before continuing, we need to verify your email address. Please check your inbox for a confirmation link.")
