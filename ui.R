library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title="Semi-collapsible Sidebar"),
  dashboardSidebar(sidebarMenuOutput("Semi_collapsible_sidebar"),              
tags$script("$(document).on('click', '.sidebar-toggle', function () {
Shiny.onInputChange('SideBar_col_react', Math.random())
                                                                                           
                                                                                           
                                                                                           });")),
  dashboardBody(tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "style.css")))
)