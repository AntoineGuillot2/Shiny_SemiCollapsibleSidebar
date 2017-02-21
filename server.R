library(shiny)
library(shinydashboard)
shinyServer(function(input,output,session){
  vals<-reactiveValues()
  vals$collapsed=FALSE
  observeEvent(input$SideBar_col_react,
               {
                 vals$collapsed=!vals$collapsed
                }
               )

  
  output$Semi_collapsible_sidebar<-renderMenu({
    if (vals$collapsed)
      sidebarMenu(
        menuItem(NULL, tabName = "dashboard", icon = icon("dashboard")),
        menuItem(NULL, icon = icon("th"), tabName = "widgets",
                 badgeColor = "green"),
        menuItem(NULL, icon = icon("bar-chart-o"),
                 menuSubItem(span(class="collapsed_text","Sub-item 1"), tabName = "subitem1"),
                 menuSubItem(span(class="collapsed_text","Sub-item 2"), tabName = "subitem2")
        ))
    else
      sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Widgets", icon = icon("th"), tabName = "widgets", badgeLabel = "new",
             badgeColor = "green"),
    menuItem("Charts", icon = icon("bar-chart-o"),
             menuSubItem("Sub-item 1", tabName = "subitem1"),
             menuSubItem("Sub-item 2", tabName = "subitem2")
    ))
  })
})