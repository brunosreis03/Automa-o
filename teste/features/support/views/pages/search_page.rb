class SearchPage
    include Capybara::DSL

    def open
        visit "/"
    end

    def search(object)
        find("input[id='search_query_top']" , visible: false).set object[:produto]
        click_button "submit_search"
    end


    def nota
        return find(".lighter").text
    end

    def adicionar
        first(".product-container").click
        click_button "Submit"
    end

    def cart
        return find('#layer_cart', wait: 5 ).text
    end     
end           
