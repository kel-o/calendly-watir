class HomePage
    include PageObject 

    def initialize(browser)
        @browser = browser
        @HOST_NAME = 'bravo-qa.calendly.com'
    end 

    def visit
        @browser.goto "#{@HOST_NAME}"
    end 

    # Header Elements
    #header menu items
    def header(option)
        list = ['Home', 'Availability', 'Integrations', 'Help', 'Account']
        browser.element(:xpath => "//a[contains( text(), #{list[option]})]")
    end
        
    #account dropdown items
    def header_account_dropdown_options(option)
        menu_list = ['Account Settings', 'Billing', 'Calendar Connections', 'Admin Management', 
                'Organzation Settings', 'Share Your Link', 'Apps', 'Logout']
        browser.element(:xpath => "//div[contains( text(), #{menu_list[option]})]")
    end 
    
    # home bar component (top-level)
    def home_bar_data_component
        browser.div('data-component':'home-bar')
    end

    # home bar elements
    def home_bar_element(option)
        items = ['My Calendly', 'Create', 'Event Types', 'Scheduled Events', 'Scheduled Workflows']

        begin 
            browser.div('data-component':'home-bar').div(text: items[option])
        rescue StandardError => e
            "selector does not exist"
        else 
            browser.div('data-component':'home-bar').span(text:  items[option])
        end
        # browser.div('data-component':'home-bar').span(text: 'My Calendly')
        # browser.div('data-component':'home-bar').div(text: 'Create')
        # browser.div('data-component':'home-bar').div(text: 'Event Types')
        # browser.div('data-component':'home-bar').div(text: 'Scheduled Events')
        # browser.div('data-component':'home-bar').div(text: 'Scheduled Workflows')
    end 

    #################################
    #Home content elements
    #Home content data component (top-level)
    def home_content
        browser.div('data-component':'home-content')
    end

    #Top row
    def home_content_filter
        browser.div('data-component':'home-content').text_field(placeholder: 'Filter')
    end   

    def home_content_filter_clear_button
    browser.div('data-component':'home-content').span(class: 'icon-delete')
    end

    def home_content_name_icon
        browser.div('data-component':'home-content').div(text: 'K')
    end

    def home_content_account_owner_name
        browser.div('data-component':'home-content').div(text: "#{org_owner}")
    end 

    def home_content_scheduling_page_link
        browser.div('data-component':'home-content').a(text: 'bravo-qa.calendly.com/keltest')
    end 

    def home_content_new_event_type_button
        browser.div('data-component':'home-content').element(:xpath => "//div[contains( text(), 'New Event Type')]")
    end         

    def home_content_share_landing_page_button
        browser.div('data-component':'home-content').button('aria-label': 'Landing page share options')
    end 

    def home_content_share_landing_page_options(option)
        list = ['Copy Link', 'Add to Website']
        browser.div('data-component':'home-content').div(text: list[option])
    end 

    #Personal Event Types section elements
    def event_type_select_box(index)
        browser.div('data-component':'home-content').div(class: 'is-left', :index => index)
    end

    def event_type_settings_button
        browser.div('data-component':'home-content').button('aria-label': "#{name} settings")
    end 

    def event_type_settings_options(option)
        items = ['Edit', 'Add Internal Note', 'Clone', 'Save to Template', 'Delete', "On/Off"]
        browser.div('data-component':'home-content').div(text: items[option])
    end 

    def event_type_name(name)
        browser.div('data-component':'home-content').h2(text: name)
    end 

    def view_booking_page_link(index)
        browser.div('data-component':'home-content').a(text: 'View booking page', :index => index )
    end 

    def copy_event_type_link_button(index)
        browser.div('data-component':'home-content').button(text: 'Copy link', :index => index )
    end 

    def share_event_type_button(index)
        browser.div('data-component':'home-content').div(text: 'Share', :index => index )
    end


    #Shared Event Types section
    def shared_event_types_title
        browser.div('data-component':'home-content').span(text: 'Shared event types')
    end

    def shared_event_types_content_blank_state
        browser.div('data-component':'home-content').h3(text: "You don't have any shared event types yet.")
    end
end 