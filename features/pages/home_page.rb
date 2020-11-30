class Home < SitePrism::Page
  element :searchBar, '#searchBar'
  element :btnSearch, '#WhiteBox > div.NavBar > div.NavBar--content > div > div > a'
  elements :CarouselLastSearches, '#CarouselLastSearches'


  def select_option(option)
    find('strong', :text => option, :match => :first).click
  end

  def searchMoto
    find(:xpath, '/html/body/div[1]/main/div[2]/div/div[1]/div[1]/h2[1]').click
  end
end