class MyAccount
    include Capybara::DSL

    def logado
        return find(".navigation_page").text
    end
end