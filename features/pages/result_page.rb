class Result < SitePrism::Page
  element :txtVerTodasMarcas, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(5) > div.Filters__line.Filters__line__see-more.Filters__line--icon.Filters__line--icon--right.Filters__line--right'
  element :txtSearch, '#searchBar'

  def select_option(option)
    find('strong', :text => option, :match => :first).click
  end

  def surveyed_cars
    sleep 10
    surveyedCars = find(:class => 'title-search').text
    return surveyedCars
  end
end