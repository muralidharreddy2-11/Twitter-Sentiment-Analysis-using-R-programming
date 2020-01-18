library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Twitter Sentiment Analysis"),
  
  # Getting User Inputs
  
  sidebarPanel(
    
    textInput("searchTerm", "Enter data to be searched with '#'", "#"),
    sliderInput("maxTweets","Number of recent tweets to use for analysis:",min=5,max=1000,value=500), 
    submitButton(text="Analyse")
    
  ),
  
  mainPanel(
    
    
    tabsetPanel(
      
      tabPanel("Top Trending Tweets Today",HTML("<div>Top Trending Tweets according to location</div>"),
               
               selectInput("trendingTable","Choose location to extract trending tweets",c("Worldwide" ,  "Abu Dhabi" , 						    "Agra" , "Ahmedabad"  ,
                                                                                          "Algeria" ,"Amritsar" ,  "Ansan" ,        "Indonesia"      ,        "India" ,     "Indianapolis",         "Indonesia" ,           "Indore"         ,     
                                                                                          "Ireland"      ,    "Israel"       ,        "Istanbul"    ,         "Italy"     ,  "Spain"    ,   "Saltillo"     ,     "San Francisco"   ,     "San Jose"  ,  
                                                                                          "San Luis Potosi",      "Vietnam"   ,           "Virginia Beach"  ,   "Washington"  , "Zurich"  ), selected = "Worldwide", selectize = FALSE),
               submitButton(text="Search"),HTML("<div><h3> Below are the hot topics today! </h3></div>"),
               tableOutput("trendtable"),
               HTML
               ("<div> </div>")),
      
      
      tabPanel("WordCloud",HTML("<div><h3>Most used words associated with the hashtag</h3></div>"),plotOutput("word"),
               HTML
               ("<div><h4> A word cloud is a visual representation of text data, typically used to depict keyword metadata (tags) on websites.
                </h4></div>")),
      
      
      tabPanel("Histogram",HTML
               ("<div><h3> Histograms graphically displays positivity or negativity of peoples' opinion about of the hashtag
			</h3></div>"), plotOutput("histPos"), plotOutput("histNeg"), plotOutput("histScore")
      ),
      
      
      tabPanel("Pie Chart",HTML("<div><h3>Pie Chart</h3></div>"), plotOutput("piechart"),HTML
               ("<div><h4> A pie chart is a circular statistical graphic, which is divided into slices to illustrate the sentiment of the hashtag.</h4></div>")
               
      ),
      
      tabPanel("Table",HTML( "<div><h3> Sentiment in a tablular form on a scale of 5 </h3></div>"), tableOutput("tabledata"),
               HTML ("<div><h4>  </h4></div>")),
      
      
      tabPanel("Top tweeters",HTML
               ("<div><h3> Top 20 tweeters of hastag</h3></div>"),plotOutput("tweetersplot"), tableOutput("tweeterstable")),
      
      tabPanel("Top Hashtags of User",textInput("user", "Enter User Name", "@"),submitButton(text="Search"),plotOutput("tophashtagsplot"),HTML
               ("<div> <h3>Hastag frequencies in the tweets of the tweeter</h3></div>"))
    )#end of tabset panel
  )#end of main panel
  
))#end of shinyUI
