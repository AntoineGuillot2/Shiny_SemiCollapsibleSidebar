library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title="Semi-collapsible Sidebar"),
  dashboardSidebar(sidebarMenuOutput("Semi_collapsible_sidebar"),              
tags$script("$(document).on('click', '.sidebar-toggle', function () {
Shiny.onInputChange('SideBar_col_react', Math.random())});"),
tags$script("$(document).on('click', '.treeview.active', function () {
$(this).removeClass('active');
$(this).find( 'ul' ).removeClass('menu-open'); 
$(this).find( 'ul' ).css('display', 'none'); 

            
            });")),
  dashboardBody(tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "style.css")))
)