class LoginPage
    include Capybara::DSL

    def open
        visit "?controller=my-account"
    end

    def with(email, password)
        find("input[id='email']").set email
        find("input[id=passwd]").set password
        click_button "SubmitLogin"
    end
end

