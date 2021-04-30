class Alert
  include Capybara::DSL

  def red
    return find(".alert-danger").text
  end
end
  