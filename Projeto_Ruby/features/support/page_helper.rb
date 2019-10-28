Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

# instanciar classes pages
module Page
  def home_page
    @home_page ||= HomePage.new
  end

  def pesquisa_home_page
    @pesquisa_home_page ||= PesquisaHomePage.new
  end
end