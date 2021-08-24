require 'pry'
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto 'bravo-qa.calendly.com'
binding.pry

# browser.text_field(name: 'email', :index => 1 ).set 'kel.okekpe+watir111@calendly.com'

# browser.button(type: 'submit', :index => 1).click
# binding.pry
# browser.p(:index => 0).text
# browser.button(value: 'Click here').click
# binding.pry
# browser.text_field(name: 'name').set 'Kel'
# browser.text_field(name: 'password').set 'PASSWORD'
# browser.button(value: 'Continue').click

# expect(browser.element(class: 'pbl').text).to eq("Before continuing, we need to verify your email address. Please check your inbox for a confirmation link.")

#header menu items
# browser.element(:xpath => "//a[contains( text(), 'Home')]")
# browser.element(:xpath => "//a[contains( text(), 'Availability')]")
# browser.element(:xpath => "//a[contains( text(), 'Integrations')]")
# browser.element(:xpath => "//a[contains( text(), 'Help')]")
# browser.element(:xpath => "//div[contains( text(), 'Account')]")

# #account dropdown items
# browser.element(:xpath => "//div[contains( text(), 'Account Settings')]")
# browser.element(:xpath => "//div[contains( text(), 'Billing')]")
# browser.element(:xpath => "//div[contains( text(), 'Calendar Connections')]")
# browser.element(:xpath => "//div[contains( text(), 'Admin Management')]")
# browser.element(:xpath => "//div[contains( text(), 'Organization Settings')]")
# browser.element(:xpath => "//div[contains( text(), 'Share Your Link')]")
# browser.element(:xpath => "//div[contains( text(), 'Apps')]")
# browser.element(:xpath => "//div[contains( text(), 'Logout')]")


# # home bar component (top-level)
# browser.div('data-component':'home-bar')
# # home bar elements
# browser.div('data-component':'home-bar').span(text: 'My Calendly')
# browser.div('data-component':'home-bar').div(text: 'Create')

# browser.div('data-component':'home-bar').div(text: 'Event Types')
# browser.div('data-component':'home-bar').div(text: 'Scheduled Events')
# browser.div('data-component':'home-bar').div(text: 'Scheduled Workflows')


# #Home content component (top-level)
# browser.div('data-component':'home-content')
# #Home content elements

# #Top row
# browser.div('data-component':'home-content').text_field(placeholder: 'Filter')
# browser.div('data-component':'home-content').span(class: 'icon-delete')

# browser.div('data-component':'home-content').div(text: 'K')
# browser.div('data-component':'home-content').div(text: "#{org_owner}")

# browser.div('data-component':'home-content').a(text: 'bravo-qa.calendly.com/keltest')
# browser.div('data-component':'home-content').div(text: 'New Event Type')

# browser.div('data-component':'home-content').element(:xpath => "//div[contains( text(), 'New Event Type')]")
# browser.div('data-component':'home-content').button('aria-label': 'Landing page share options')


# #Personal Event Types section
# browser.div('data-component':'home-content').input(name: 'selection')

# #15 minute event type elements
# browser.div('data-component':'home-content').div(class: 'is-left', :index => 0)
# browser.div('data-component':'home-content').button('aria-label': '15 Minute Meeting settings')
# browser.div('data-component':'home-content').h2(text: '15 Minute Meeting')
# browser.div('data-component':'home-content').a(text: 'View booking page', :index => 0 )
# browser.div('data-component':'home-content').button(text: 'Copy link', :index => 0 )
# browser.div('data-component':'home-content').div(text: 'Share', :index => 0 )

# #30 minute event type elements
# browser.div('data-component':'home-content').div(class: 'is-left', :index => 1)
# browser.div('data-component':'home-content').button('aria-label': '30 Minute Meeting settings')
# browser.div('data-component':'home-content').h2(text: '30 Minute Meeting')
# browser.div('data-component':'home-content').a(text: 'View booking page', :index => 1 )
# browser.div('data-component':'home-content').button(text: 'Copy link', :index => 1 )
# browser.div('data-component':'home-content').div(text: 'Share', :index => 1 )

# #60 minute event type elements
# browser.div('data-component':'home-content').div(class: 'is-left', :index => 2)
# browser.div('data-component':'home-content').button('aria-label': '60 Minute Meeting settings')
# browser.div('data-component':'home-content').h2(text: '60 Minute Meeting')
# browser.div('data-component':'home-content').a(text: 'View booking page', :index => 2 )
# browser.div('data-component':'home-content').button(text: 'Copy link', :index => 2 )
# browser.div('data-component':'home-content').div(text: 'Share', :index => 2 )

# #Shared Event Types section
# browser.div('data-component':'home-content').span(text: 'Shared event types')
# browser.div('data-component':'home-content').h3(text: "You don't have any shared event types yet.")