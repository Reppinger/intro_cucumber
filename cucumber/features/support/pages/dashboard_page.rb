class DashboardPage
  include PageObject

  page_url "#{FigNewton.base_url}/dashboard"

  h1(:name)

end