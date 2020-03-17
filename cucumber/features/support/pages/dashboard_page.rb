class DashboardPage
  include PageObject

  page_url "http://localhost:4200/dashboard"

  h1(:name)

end