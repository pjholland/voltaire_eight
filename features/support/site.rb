module Site

  def browser

    unless @browser.nil?
      return @browser
    end
  end

  class Site

    def initialize(browser)
      @browser = browser
    end

    def login
      @login_page ||= Login.new(@browser)
    end

    def homepage
      @homepage ||= Homepage.new(@browser)
    end


  end

  def site
    @site ||= Site.new(browser)
  end

end


World(Site)


